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
include CMakeFiles/ptr-arg-3.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ptr-arg-3.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ptr-arg-3.dir/flags.make

CMakeFiles/ptr-arg-3.dir/src/ptr-arg-3.c.o: CMakeFiles/ptr-arg-3.dir/flags.make
CMakeFiles/ptr-arg-3.dir/src/ptr-arg-3.c.o: ../src/ptr-arg-3.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/ptr-arg-3.dir/src/ptr-arg-3.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ptr-arg-3.dir/src/ptr-arg-3.c.o   -c "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/src/ptr-arg-3.c"

CMakeFiles/ptr-arg-3.dir/src/ptr-arg-3.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ptr-arg-3.dir/src/ptr-arg-3.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/src/ptr-arg-3.c" > CMakeFiles/ptr-arg-3.dir/src/ptr-arg-3.c.i

CMakeFiles/ptr-arg-3.dir/src/ptr-arg-3.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ptr-arg-3.dir/src/ptr-arg-3.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/src/ptr-arg-3.c" -o CMakeFiles/ptr-arg-3.dir/src/ptr-arg-3.c.s

CMakeFiles/ptr-arg-3.dir/src/ptr-arg-3.c.o.requires:

.PHONY : CMakeFiles/ptr-arg-3.dir/src/ptr-arg-3.c.o.requires

CMakeFiles/ptr-arg-3.dir/src/ptr-arg-3.c.o.provides: CMakeFiles/ptr-arg-3.dir/src/ptr-arg-3.c.o.requires
	$(MAKE) -f CMakeFiles/ptr-arg-3.dir/build.make CMakeFiles/ptr-arg-3.dir/src/ptr-arg-3.c.o.provides.build
.PHONY : CMakeFiles/ptr-arg-3.dir/src/ptr-arg-3.c.o.provides

CMakeFiles/ptr-arg-3.dir/src/ptr-arg-3.c.o.provides.build: CMakeFiles/ptr-arg-3.dir/src/ptr-arg-3.c.o


# Object files for target ptr-arg-3
ptr__arg__3_OBJECTS = \
"CMakeFiles/ptr-arg-3.dir/src/ptr-arg-3.c.o"

# External object files for target ptr-arg-3
ptr__arg__3_EXTERNAL_OBJECTS =

ptr-arg-3: CMakeFiles/ptr-arg-3.dir/src/ptr-arg-3.c.o
ptr-arg-3: CMakeFiles/ptr-arg-3.dir/build.make
ptr-arg-3: CMakeFiles/ptr-arg-3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ptr-arg-3"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ptr-arg-3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ptr-arg-3.dir/build: ptr-arg-3

.PHONY : CMakeFiles/ptr-arg-3.dir/build

CMakeFiles/ptr-arg-3.dir/requires: CMakeFiles/ptr-arg-3.dir/src/ptr-arg-3.c.o.requires

.PHONY : CMakeFiles/ptr-arg-3.dir/requires

CMakeFiles/ptr-arg-3.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ptr-arg-3.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ptr-arg-3.dir/clean

CMakeFiles/ptr-arg-3.dir/depend:
	cd "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug/CMakeFiles/ptr-arg-3.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/ptr-arg-3.dir/depend
