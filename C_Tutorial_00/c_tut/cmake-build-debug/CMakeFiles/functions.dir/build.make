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
CMAKE_SOURCE_DIR = "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/functions.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/functions.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/functions.dir/flags.make

CMakeFiles/functions.dir/src/functions.c.o: CMakeFiles/functions.dir/flags.make
CMakeFiles/functions.dir/src/functions.c.o: ../src/functions.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/functions.dir/src/functions.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/functions.dir/src/functions.c.o   -c "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/src/functions.c"

CMakeFiles/functions.dir/src/functions.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/functions.dir/src/functions.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/src/functions.c" > CMakeFiles/functions.dir/src/functions.c.i

CMakeFiles/functions.dir/src/functions.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/functions.dir/src/functions.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/src/functions.c" -o CMakeFiles/functions.dir/src/functions.c.s

CMakeFiles/functions.dir/src/functions.c.o.requires:

.PHONY : CMakeFiles/functions.dir/src/functions.c.o.requires

CMakeFiles/functions.dir/src/functions.c.o.provides: CMakeFiles/functions.dir/src/functions.c.o.requires
	$(MAKE) -f CMakeFiles/functions.dir/build.make CMakeFiles/functions.dir/src/functions.c.o.provides.build
.PHONY : CMakeFiles/functions.dir/src/functions.c.o.provides

CMakeFiles/functions.dir/src/functions.c.o.provides.build: CMakeFiles/functions.dir/src/functions.c.o


# Object files for target functions
functions_OBJECTS = \
"CMakeFiles/functions.dir/src/functions.c.o"

# External object files for target functions
functions_EXTERNAL_OBJECTS =

functions: CMakeFiles/functions.dir/src/functions.c.o
functions: CMakeFiles/functions.dir/build.make
functions: CMakeFiles/functions.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable functions"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/functions.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/functions.dir/build: functions

.PHONY : CMakeFiles/functions.dir/build

CMakeFiles/functions.dir/requires: CMakeFiles/functions.dir/src/functions.c.o.requires

.PHONY : CMakeFiles/functions.dir/requires

CMakeFiles/functions.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/functions.dir/cmake_clean.cmake
.PHONY : CMakeFiles/functions.dir/clean

CMakeFiles/functions.dir/depend:
	cd "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug/CMakeFiles/functions.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/functions.dir/depend

