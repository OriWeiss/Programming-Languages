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
include CMakeFiles/word.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/word.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/word.dir/flags.make

CMakeFiles/word.dir/src/calc.c.o: CMakeFiles/word.dir/flags.make
CMakeFiles/word.dir/src/calc.c.o: ../src/calc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/word.dir/src/calc.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/word.dir/src/calc.c.o   -c "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/src/calc.c"

CMakeFiles/word.dir/src/calc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/word.dir/src/calc.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/src/calc.c" > CMakeFiles/word.dir/src/calc.c.i

CMakeFiles/word.dir/src/calc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/word.dir/src/calc.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/src/calc.c" -o CMakeFiles/word.dir/src/calc.c.s

CMakeFiles/word.dir/src/calc.c.o.requires:

.PHONY : CMakeFiles/word.dir/src/calc.c.o.requires

CMakeFiles/word.dir/src/calc.c.o.provides: CMakeFiles/word.dir/src/calc.c.o.requires
	$(MAKE) -f CMakeFiles/word.dir/build.make CMakeFiles/word.dir/src/calc.c.o.provides.build
.PHONY : CMakeFiles/word.dir/src/calc.c.o.provides

CMakeFiles/word.dir/src/calc.c.o.provides.build: CMakeFiles/word.dir/src/calc.c.o


# Object files for target word
word_OBJECTS = \
"CMakeFiles/word.dir/src/calc.c.o"

# External object files for target word
word_EXTERNAL_OBJECTS =

word: CMakeFiles/word.dir/src/calc.c.o
word: CMakeFiles/word.dir/build.make
word: CMakeFiles/word.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable word"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/word.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/word.dir/build: word

.PHONY : CMakeFiles/word.dir/build

CMakeFiles/word.dir/requires: CMakeFiles/word.dir/src/calc.c.o.requires

.PHONY : CMakeFiles/word.dir/requires

CMakeFiles/word.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/word.dir/cmake_clean.cmake
.PHONY : CMakeFiles/word.dir/clean

CMakeFiles/word.dir/depend:
	cd "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab01/c_tut/cmake-build-debug/CMakeFiles/word.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/word.dir/depend
