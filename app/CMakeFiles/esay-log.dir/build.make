# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lishuwei/easy_log/easy_log

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lishuwei/easy_log/easy_log/app

# Include any dependencies generated for this target.
include CMakeFiles/esay-log.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/esay-log.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/esay-log.dir/flags.make

CMakeFiles/esay-log.dir/src/LoggerWarp.cpp.o: CMakeFiles/esay-log.dir/flags.make
CMakeFiles/esay-log.dir/src/LoggerWarp.cpp.o: ../src/LoggerWarp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lishuwei/easy_log/easy_log/app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/esay-log.dir/src/LoggerWarp.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/esay-log.dir/src/LoggerWarp.cpp.o -c /home/lishuwei/easy_log/easy_log/src/LoggerWarp.cpp

CMakeFiles/esay-log.dir/src/LoggerWarp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/esay-log.dir/src/LoggerWarp.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lishuwei/easy_log/easy_log/src/LoggerWarp.cpp > CMakeFiles/esay-log.dir/src/LoggerWarp.cpp.i

CMakeFiles/esay-log.dir/src/LoggerWarp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/esay-log.dir/src/LoggerWarp.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lishuwei/easy_log/easy_log/src/LoggerWarp.cpp -o CMakeFiles/esay-log.dir/src/LoggerWarp.cpp.s

CMakeFiles/esay-log.dir/src/LoggerWarp.cpp.o.requires:

.PHONY : CMakeFiles/esay-log.dir/src/LoggerWarp.cpp.o.requires

CMakeFiles/esay-log.dir/src/LoggerWarp.cpp.o.provides: CMakeFiles/esay-log.dir/src/LoggerWarp.cpp.o.requires
	$(MAKE) -f CMakeFiles/esay-log.dir/build.make CMakeFiles/esay-log.dir/src/LoggerWarp.cpp.o.provides.build
.PHONY : CMakeFiles/esay-log.dir/src/LoggerWarp.cpp.o.provides

CMakeFiles/esay-log.dir/src/LoggerWarp.cpp.o.provides.build: CMakeFiles/esay-log.dir/src/LoggerWarp.cpp.o


CMakeFiles/esay-log.dir/test.cpp.o: CMakeFiles/esay-log.dir/flags.make
CMakeFiles/esay-log.dir/test.cpp.o: test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lishuwei/easy_log/easy_log/app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/esay-log.dir/test.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/esay-log.dir/test.cpp.o -c /home/lishuwei/easy_log/easy_log/app/test.cpp

CMakeFiles/esay-log.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/esay-log.dir/test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lishuwei/easy_log/easy_log/app/test.cpp > CMakeFiles/esay-log.dir/test.cpp.i

CMakeFiles/esay-log.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/esay-log.dir/test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lishuwei/easy_log/easy_log/app/test.cpp -o CMakeFiles/esay-log.dir/test.cpp.s

CMakeFiles/esay-log.dir/test.cpp.o.requires:

.PHONY : CMakeFiles/esay-log.dir/test.cpp.o.requires

CMakeFiles/esay-log.dir/test.cpp.o.provides: CMakeFiles/esay-log.dir/test.cpp.o.requires
	$(MAKE) -f CMakeFiles/esay-log.dir/build.make CMakeFiles/esay-log.dir/test.cpp.o.provides.build
.PHONY : CMakeFiles/esay-log.dir/test.cpp.o.provides

CMakeFiles/esay-log.dir/test.cpp.o.provides.build: CMakeFiles/esay-log.dir/test.cpp.o


# Object files for target esay-log
esay__log_OBJECTS = \
"CMakeFiles/esay-log.dir/src/LoggerWarp.cpp.o" \
"CMakeFiles/esay-log.dir/test.cpp.o"

# External object files for target esay-log
esay__log_EXTERNAL_OBJECTS =

esay-log: CMakeFiles/esay-log.dir/src/LoggerWarp.cpp.o
esay-log: CMakeFiles/esay-log.dir/test.cpp.o
esay-log: CMakeFiles/esay-log.dir/build.make
esay-log: ../lib/log4cxx/liblog4cxx.so
esay-log: CMakeFiles/esay-log.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lishuwei/easy_log/easy_log/app/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable esay-log"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/esay-log.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/esay-log.dir/build: esay-log

.PHONY : CMakeFiles/esay-log.dir/build

CMakeFiles/esay-log.dir/requires: CMakeFiles/esay-log.dir/src/LoggerWarp.cpp.o.requires
CMakeFiles/esay-log.dir/requires: CMakeFiles/esay-log.dir/test.cpp.o.requires

.PHONY : CMakeFiles/esay-log.dir/requires

CMakeFiles/esay-log.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/esay-log.dir/cmake_clean.cmake
.PHONY : CMakeFiles/esay-log.dir/clean

CMakeFiles/esay-log.dir/depend:
	cd /home/lishuwei/easy_log/easy_log/app && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lishuwei/easy_log/easy_log /home/lishuwei/easy_log/easy_log /home/lishuwei/easy_log/easy_log/app /home/lishuwei/easy_log/easy_log/app /home/lishuwei/easy_log/easy_log/app/CMakeFiles/esay-log.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/esay-log.dir/depend
