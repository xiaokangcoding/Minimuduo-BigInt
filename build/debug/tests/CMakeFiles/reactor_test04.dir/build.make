# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/muduo/03/jmuduo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/muduo/03/build/debug

# Include any dependencies generated for this target.
include tests/CMakeFiles/reactor_test04.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/reactor_test04.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/reactor_test04.dir/flags.make

tests/CMakeFiles/reactor_test04.dir/Reactor_test04.cc.o: tests/CMakeFiles/reactor_test04.dir/flags.make
tests/CMakeFiles/reactor_test04.dir/Reactor_test04.cc.o: /root/muduo/03/jmuduo/tests/Reactor_test04.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /root/muduo/03/build/debug/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tests/CMakeFiles/reactor_test04.dir/Reactor_test04.cc.o"
	cd /root/muduo/03/build/debug/tests && g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/reactor_test04.dir/Reactor_test04.cc.o -c /root/muduo/03/jmuduo/tests/Reactor_test04.cc

tests/CMakeFiles/reactor_test04.dir/Reactor_test04.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/reactor_test04.dir/Reactor_test04.cc.i"
	cd /root/muduo/03/build/debug/tests && g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/muduo/03/jmuduo/tests/Reactor_test04.cc > CMakeFiles/reactor_test04.dir/Reactor_test04.cc.i

tests/CMakeFiles/reactor_test04.dir/Reactor_test04.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/reactor_test04.dir/Reactor_test04.cc.s"
	cd /root/muduo/03/build/debug/tests && g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/muduo/03/jmuduo/tests/Reactor_test04.cc -o CMakeFiles/reactor_test04.dir/Reactor_test04.cc.s

tests/CMakeFiles/reactor_test04.dir/Reactor_test04.cc.o.requires:
.PHONY : tests/CMakeFiles/reactor_test04.dir/Reactor_test04.cc.o.requires

tests/CMakeFiles/reactor_test04.dir/Reactor_test04.cc.o.provides: tests/CMakeFiles/reactor_test04.dir/Reactor_test04.cc.o.requires
	$(MAKE) -f tests/CMakeFiles/reactor_test04.dir/build.make tests/CMakeFiles/reactor_test04.dir/Reactor_test04.cc.o.provides.build
.PHONY : tests/CMakeFiles/reactor_test04.dir/Reactor_test04.cc.o.provides

tests/CMakeFiles/reactor_test04.dir/Reactor_test04.cc.o.provides.build: tests/CMakeFiles/reactor_test04.dir/Reactor_test04.cc.o

# Object files for target reactor_test04
reactor_test04_OBJECTS = \
"CMakeFiles/reactor_test04.dir/Reactor_test04.cc.o"

# External object files for target reactor_test04
reactor_test04_EXTERNAL_OBJECTS =

bin/reactor_test04: tests/CMakeFiles/reactor_test04.dir/Reactor_test04.cc.o
bin/reactor_test04: tests/CMakeFiles/reactor_test04.dir/build.make
bin/reactor_test04: lib/libmuduo_net.a
bin/reactor_test04: lib/libmuduo_base.a
bin/reactor_test04: tests/CMakeFiles/reactor_test04.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/reactor_test04"
	cd /root/muduo/03/build/debug/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/reactor_test04.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/reactor_test04.dir/build: bin/reactor_test04
.PHONY : tests/CMakeFiles/reactor_test04.dir/build

tests/CMakeFiles/reactor_test04.dir/requires: tests/CMakeFiles/reactor_test04.dir/Reactor_test04.cc.o.requires
.PHONY : tests/CMakeFiles/reactor_test04.dir/requires

tests/CMakeFiles/reactor_test04.dir/clean:
	cd /root/muduo/03/build/debug/tests && $(CMAKE_COMMAND) -P CMakeFiles/reactor_test04.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/reactor_test04.dir/clean

tests/CMakeFiles/reactor_test04.dir/depend:
	cd /root/muduo/03/build/debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/muduo/03/jmuduo /root/muduo/03/jmuduo/tests /root/muduo/03/build/debug /root/muduo/03/build/debug/tests /root/muduo/03/build/debug/tests/CMakeFiles/reactor_test04.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/reactor_test04.dir/depend

