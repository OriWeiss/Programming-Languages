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
include CMakeFiles/ref-arg.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ref-arg.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ref-arg.dir/flags.make

CMakeFiles/ref-arg.dir/src/ref-arg.c.o: CMakeFiles/ref-arg.dir/flags.make
CMakeFiles/ref-arg.dir/src/ref-arg.c.o: ../src/ref-arg.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/ref-arg.dir/src/ref-arg.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ref-arg.dir/src/ref-arg.c.o   -c "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/src/ref-arg.c"

CMakeFiles/ref-arg.dir/src/ref-arg.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ref-arg.dir/src/ref-arg.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/src/ref-arg.c" > CMakeFiles/ref-arg.dir/src/ref-arg.c.i

CMakeFiles/ref-arg.dir/src/ref-arg.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ref-arg.dir/src/ref-arg.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/src/ref-arg.c" -o CMakeFiles/ref-arg.dir/src/ref-arg.c.s

CMakeFiles/ref-arg.dir/src/ref-arg.c.o.requires:

.PHONY : CMakeFiles/ref-arg.dir/src/ref-arg.c.o.requires

CMakeFiles/ref-arg.dir/src/ref-arg.c.o.provides: CMakeFiles/ref-arg.dir/src/ref-arg.c.o.requires
	$(MAKE) -f CMakeFiles/ref-arg.dir/build.make CMakeFiles/ref-arg.dir/src/ref-arg.c.o.provides.build
.PHONY : CMakeFiles/ref-arg.dir/src/ref-arg.c.o.provides

CMakeFiles/ref-arg.dir/src/ref-arg.c.o.provides.build: CMakeFiles/ref-arg.dir/src/ref-arg.c.o


# Object files for target ref-arg
ref__arg_OBJECTS = \
"CMakeFiles/ref-arg.dir/src/ref-arg.c.o"

# External object files for target ref-arg
ref__arg_EXTERNAL_OBJECTS =

ref-arg: CMakeFiles/ref-arg.dir/src/ref-arg.c.o
ref-arg: CMakeFiles/ref-arg.dir/build.make
ref-arg: CMakeFiles/ref-arg.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ref-arg"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ref-arg.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ref-arg.dir/build: ref-arg

.PHONY : CMakeFiles/ref-arg.dir/build

CMakeFiles/ref-arg.dir/requires: CMakeFiles/ref-arg.dir/src/ref-arg.c.o.requires

.PHONY : CMakeFiles/ref-arg.dir/requires

CMakeFiles/ref-arg.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ref-arg.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ref-arg.dir/clean

CMakeFiles/ref-arg.dir/depend:
	cd "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug/CMakeFiles/ref-arg.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/ref-arg.dir/depend
