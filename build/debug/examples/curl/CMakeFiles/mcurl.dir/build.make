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
include examples/curl/CMakeFiles/mcurl.dir/depend.make

# Include the progress variables for this target.
include examples/curl/CMakeFiles/mcurl.dir/progress.make

# Include the compile flags for this target's objects.
include examples/curl/CMakeFiles/mcurl.dir/flags.make

examples/curl/CMakeFiles/mcurl.dir/mcurl.cc.o: examples/curl/CMakeFiles/mcurl.dir/flags.make
examples/curl/CMakeFiles/mcurl.dir/mcurl.cc.o: /root/muduo/03/jmuduo/examples/curl/mcurl.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /root/muduo/03/build/debug/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/curl/CMakeFiles/mcurl.dir/mcurl.cc.o"
	cd /root/muduo/03/build/debug/examples/curl && g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/mcurl.dir/mcurl.cc.o -c /root/muduo/03/jmuduo/examples/curl/mcurl.cc

examples/curl/CMakeFiles/mcurl.dir/mcurl.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mcurl.dir/mcurl.cc.i"
	cd /root/muduo/03/build/debug/examples/curl && g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /root/muduo/03/jmuduo/examples/curl/mcurl.cc > CMakeFiles/mcurl.dir/mcurl.cc.i

examples/curl/CMakeFiles/mcurl.dir/mcurl.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mcurl.dir/mcurl.cc.s"
	cd /root/muduo/03/build/debug/examples/curl && g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /root/muduo/03/jmuduo/examples/curl/mcurl.cc -o CMakeFiles/mcurl.dir/mcurl.cc.s

examples/curl/CMakeFiles/mcurl.dir/mcurl.cc.o.requires:
.PHONY : examples/curl/CMakeFiles/mcurl.dir/mcurl.cc.o.requires

examples/curl/CMakeFiles/mcurl.dir/mcurl.cc.o.provides: examples/curl/CMakeFiles/mcurl.dir/mcurl.cc.o.requires
	$(MAKE) -f examples/curl/CMakeFiles/mcurl.dir/build.make examples/curl/CMakeFiles/mcurl.dir/mcurl.cc.o.provides.build
.PHONY : examples/curl/CMakeFiles/mcurl.dir/mcurl.cc.o.provides

examples/curl/CMakeFiles/mcurl.dir/mcurl.cc.o.provides.build: examples/curl/CMakeFiles/mcurl.dir/mcurl.cc.o

# Object files for target mcurl
mcurl_OBJECTS = \
"CMakeFiles/mcurl.dir/mcurl.cc.o"

# External object files for target mcurl
mcurl_EXTERNAL_OBJECTS =

bin/mcurl: examples/curl/CMakeFiles/mcurl.dir/mcurl.cc.o
bin/mcurl: examples/curl/CMakeFiles/mcurl.dir/build.make
bin/mcurl: lib/libmuduo_curl.a
bin/mcurl: lib/libmuduo_net.a
bin/mcurl: lib/libmuduo_base.a
bin/mcurl: examples/curl/CMakeFiles/mcurl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/mcurl"
	cd /root/muduo/03/build/debug/examples/curl && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mcurl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/curl/CMakeFiles/mcurl.dir/build: bin/mcurl
.PHONY : examples/curl/CMakeFiles/mcurl.dir/build

examples/curl/CMakeFiles/mcurl.dir/requires: examples/curl/CMakeFiles/mcurl.dir/mcurl.cc.o.requires
.PHONY : examples/curl/CMakeFiles/mcurl.dir/requires

examples/curl/CMakeFiles/mcurl.dir/clean:
	cd /root/muduo/03/build/debug/examples/curl && $(CMAKE_COMMAND) -P CMakeFiles/mcurl.dir/cmake_clean.cmake
.PHONY : examples/curl/CMakeFiles/mcurl.dir/clean

examples/curl/CMakeFiles/mcurl.dir/depend:
	cd /root/muduo/03/build/debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/muduo/03/jmuduo /root/muduo/03/jmuduo/examples/curl /root/muduo/03/build/debug /root/muduo/03/build/debug/examples/curl /root/muduo/03/build/debug/examples/curl/CMakeFiles/mcurl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/curl/CMakeFiles/mcurl.dir/depend

