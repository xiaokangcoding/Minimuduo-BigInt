# 在线大整数运算<BigInt>
##### 介绍：
    提供大整数(万位以上，主要受硬件资源限制)的在线快速运算，主解决本地计算机不能进行超大数 据运算的问题，采用B/S架构。
    
##### 后台服务器部分： 
    1.实现大整数的基本运算：Add，Sub，Mul，Div，Mod，Square，Pow，PowMod


##### Web服务部分(webserver)
    参考陈硕的muduo实现了一个MiniMuduo，在此基础上实现webserver
  
#####  webserver详细介绍：

* 采用one loop per thread + threadpool(计算线程池) 的并发服务器模型
* 使用状态机解析HTTP请求报文，支持解析GET和POST请求
* 访问数据库(mysql)，实现web端的用户注册也登录功能，可以请求服务器图片
* 采用异步日志类，来记录服务器的运行状态
* 经Webbench压力测试可以实现
    

## MiniMuduo核心技术点
  
##### Base基础库(MiniMuduo/Base)
**Exception类**
   异常类的封装，对外提供what()输出错误信息，stacktrace()函数进行栈追踪，使用时需要throw muduo::Exception("oops"),外部使用catch(const muduo::Exception &ex)捕获并使用ex.what()/stacktrace()获取详细信息

**TimeStamp类**
   TimeStamp类继承至less_than_comparable<>,只需要实现<,可自动实现>,<=,>=

**Atomic类**
   原子性操作比锁的开销小，所以我们可以使用gcc提供的自增自减原子操作；最小的执行单元是汇编语句，不是语言语句
**CountDownLatch类**
   既可以用于所有子线程等待主线程发起 "起跑"，也可以用于主线程等待子线程初始化完毕才开始工作。其中使用RAII技法封装MutexLockGuard,holder表示锁属于哪一个线程。(注意holder是MutexLock的成员)
**BlockingQueue**

BlockingQueue和BoundedBlockingQueue分别是无界有界队列，本质上是生产者消费者问题，使用信号量或者条件变量解决。ThreadPool的本质也是生产者消费者问题，任务队列中是任务函数（生产者），线程队列就相当于消费者。
**异步日志类**

* 对于一般的日志类的实现，(1) 重载<<格式化输出 (2)级别处理 (3)缓冲区。
* 为了提高效率并防止阻塞业务线程，用一个背景线程负责收集日志消息，并写入日志文件，其他业务线程只管往这个日志线程发送日志消息，这称为异步日志。基本实现仍然是生产者（业务线程）与消费者（日志线程）和缓冲区，但是这样简单的模型会造成写文件操作比较频繁，因为每一次signal我们就需要进行写操作，将消息全部写入文件，效率较低。muduo使用多缓冲机制，即mutliple buffering，使用多个缓冲区，当一块缓冲区写满或者时间超时才signal；如果发生消息堆积，会丢弃只剩2块内存块。另外使用swap公共缓冲区来避免竞争，一次获得所有的消息并写入文件。
* 
***核心逻辑**
（1）前端业务线程将日志写到currentBuffer_，nextBuffer_是后备的一块缓冲区，buffers_是要写入到日志文件的缓冲区列表；
（2）currentBuffer_写满后，添加到buffers_，会通知后端的日志线程写日志文件，并且currentBuffer_会指向nextBuffer_所指向的缓冲区，currentBuffer_不写满，后端线程是不会将数据写入到日志文件中的。
（3）后端日志线程得到通知后，此时前端的currentBuffer_没有满，也会将其添加到buffers_中；将buwBuffer1_缓冲区给currentBuffer_，将newBuffer2_缓冲区给nextBuffer_，保证前端的业务线程还能写日志消息到缓冲区中。
（4）当buffer_缓冲区的数据写完之后，还需要预留2块缓冲区给newBuffer1_和newBuffer2_

##### 双缓冲的优点：使得前端的业务线程与后端的日志线程能够并发，且写日志不太频繁，提高了效率。


##### Base网络库(MiniMuduo/net)

* **reactor**
reactor+线程池适合CPU密集型，multiple reactors适合突发I/O型，一般一个千兆网口一个rector；multiple rectors（线程） + thread pool 更能适应突发I/O和密集计算。其中multiple reactors中的
mainReactor关注的是acceptor，也就是监听socket所关注的事件；
subReactor关注的是已连接socket所关注的事件，每次新到一个连接，就选择一个subReactor来处理该连接（也就选择了该Reactor所对应的线程来处理连接）；多个sub reactor采用round-robin的机制分配。

* **TimerQueue类**
 timers_和activeTimers_保存的是相同的数据，timers_是按到期时间排序，activeTimers_按照对象地址排序，并且timerQueue只关注最早的那个定时器，所以当发生可读事件的时候，需要使用getExpired()获取所有的超时事件，因为可能有同一时刻的多个定时器。


**TcpConnection**
