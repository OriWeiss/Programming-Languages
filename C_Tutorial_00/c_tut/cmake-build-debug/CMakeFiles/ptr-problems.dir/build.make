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
include CMakeFiles/ptr-problems.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ptr-problems.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ptr-problems.dir/flags.make

CMakeFiles/ptr-problems.dir/src/ptr-problems.c.o: CMakeFiles/ptr-problems.dir/flags.make
CMakeFiles/ptr-problems.dir/src/ptr-problems.c.o: ../src/ptr-problems.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/ptr-problems.dir/src/ptr-problems.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ptr-problems.dir/src/ptr-problems.c.o   -c "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/src/ptr-problems.c"

CMakeFiles/ptr-problems.dir/src/ptr-problems.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ptr-problems.dir/src/ptr-problems.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/src/ptr-problems.c" > CMakeFiles/ptr-problems.dir/src/ptr-problems.c.i

CMakeFiles/ptr-problems.dir/src/ptr-problems.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ptr-problems.dir/src/ptr-problems.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/src/ptr-problems.c" -o CMakeFiles/ptr-problems.dir/src/ptr-problems.c.s

CMakeFiles/ptr-problems.dir/src/ptr-problems.c.o.requires:

.PHONY : CMakeFiles/ptr-problems.dir/src/ptr-problems.c.o.requires

CMakeFiles/ptr-problems.dir/src/ptr-problems.c.o.provides: CMakeFiles/ptr-problems.dir/src/ptr-problems.c.o.requires
	$(MAKE) -f CMakeFiles/ptr-problems.dir/build.make CMakeFiles/ptr-problems.dir/src/ptr-problems.c.o.provides.build
.PHONY : CMakeFiles/ptr-problems.dir/src/ptr-problems.c.o.provides

CMakeFiles/ptr-problems.dir/src/ptr-problems.c.o.provides.build: CMakeFiles/ptr-problems.dir/src/ptr-problems.c.o


# Object files for target ptr-problems
ptr__problems_OBJECTS = \
"CMakeFiles/ptr-problems.dir/src/ptr-problems.c.o"

# External object files for target ptr-problems
ptr__problems_EXTERNAL_OBJECTS =

ptr-problems: CMakeFiles/ptr-problems.dir/src/ptr-problems.c.o
ptr-problems: CMakeFiles/ptr-problems.dir/build.make
ptr-problems: CMakeFiles/ptr-problems.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ptr-problems"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ptr-problems.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ptr-problems.dir/build: ptr-problems

.PHONY : CMakeFiles/ptr-problems.dir/build

CMakeFiles/ptr-problems.dir/requires: CMakeFiles/ptr-problems.dir/src/ptr-problems.c.o.requires

.PHONY : CMakeFiles/ptr-problems.dir/requires

CMakeFiles/ptr-problems.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ptr-problems.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ptr-problems.dir/clean

CMakeFiles/ptr-problems.dir/depend:
	cd "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug/CMakeFiles/ptr-problems.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/ptr-problems.dir/depend

