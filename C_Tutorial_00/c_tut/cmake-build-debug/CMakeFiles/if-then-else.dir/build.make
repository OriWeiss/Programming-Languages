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
include CMakeFiles/if-then-else.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/if-then-else.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/if-then-else.dir/flags.make

CMakeFiles/if-then-else.dir/src/if-then-else.c.o: CMakeFiles/if-then-else.dir/flags.make
CMakeFiles/if-then-else.dir/src/if-then-else.c.o: ../src/if-then-else.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/if-then-else.dir/src/if-then-else.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/if-then-else.dir/src/if-then-else.c.o   -c "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/src/if-then-else.c"

CMakeFiles/if-then-else.dir/src/if-then-else.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/if-then-else.dir/src/if-then-else.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/src/if-then-else.c" > CMakeFiles/if-then-else.dir/src/if-then-else.c.i

CMakeFiles/if-then-else.dir/src/if-then-else.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/if-then-else.dir/src/if-then-else.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/src/if-then-else.c" -o CMakeFiles/if-then-else.dir/src/if-then-else.c.s

CMakeFiles/if-then-else.dir/src/if-then-else.c.o.requires:

.PHONY : CMakeFiles/if-then-else.dir/src/if-then-else.c.o.requires

CMakeFiles/if-then-else.dir/src/if-then-else.c.o.provides: CMakeFiles/if-then-else.dir/src/if-then-else.c.o.requires
	$(MAKE) -f CMakeFiles/if-then-else.dir/build.make CMakeFiles/if-then-else.dir/src/if-then-else.c.o.provides.build
.PHONY : CMakeFiles/if-then-else.dir/src/if-then-else.c.o.provides

CMakeFiles/if-then-else.dir/src/if-then-else.c.o.provides.build: CMakeFiles/if-then-else.dir/src/if-then-else.c.o


# Object files for target if-then-else
if__then__else_OBJECTS = \
"CMakeFiles/if-then-else.dir/src/if-then-else.c.o"

# External object files for target if-then-else
if__then__else_EXTERNAL_OBJECTS =

if-then-else: CMakeFiles/if-then-else.dir/src/if-then-else.c.o
if-then-else: CMakeFiles/if-then-else.dir/build.make
if-then-else: CMakeFiles/if-then-else.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable if-then-else"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/if-then-else.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/if-then-else.dir/build: if-then-else

.PHONY : CMakeFiles/if-then-else.dir/build

CMakeFiles/if-then-else.dir/requires: CMakeFiles/if-then-else.dir/src/if-then-else.c.o.requires

.PHONY : CMakeFiles/if-then-else.dir/requires

CMakeFiles/if-then-else.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/if-then-else.dir/cmake_clean.cmake
.PHONY : CMakeFiles/if-then-else.dir/clean

CMakeFiles/if-then-else.dir/depend:
	cd "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug/CMakeFiles/if-then-else.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/if-then-else.dir/depend

