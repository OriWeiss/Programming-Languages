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
CMAKE_SOURCE_DIR = "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab03/lab3_personnel"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab03/lab3_personnel/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/personnel.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/personnel.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/personnel.dir/flags.make

CMakeFiles/personnel.dir/src/main.c.o: CMakeFiles/personnel.dir/flags.make
CMakeFiles/personnel.dir/src/main.c.o: ../src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab03/lab3_personnel/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/personnel.dir/src/main.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/personnel.dir/src/main.c.o   -c "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab03/lab3_personnel/src/main.c"

CMakeFiles/personnel.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/personnel.dir/src/main.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab03/lab3_personnel/src/main.c" > CMakeFiles/personnel.dir/src/main.c.i

CMakeFiles/personnel.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/personnel.dir/src/main.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab03/lab3_personnel/src/main.c" -o CMakeFiles/personnel.dir/src/main.c.s

CMakeFiles/personnel.dir/src/main.c.o.requires:

.PHONY : CMakeFiles/personnel.dir/src/main.c.o.requires

CMakeFiles/personnel.dir/src/main.c.o.provides: CMakeFiles/personnel.dir/src/main.c.o.requires
	$(MAKE) -f CMakeFiles/personnel.dir/build.make CMakeFiles/personnel.dir/src/main.c.o.provides.build
.PHONY : CMakeFiles/personnel.dir/src/main.c.o.provides

CMakeFiles/personnel.dir/src/main.c.o.provides.build: CMakeFiles/personnel.dir/src/main.c.o


CMakeFiles/personnel.dir/src/list.c.o: CMakeFiles/personnel.dir/flags.make
CMakeFiles/personnel.dir/src/list.c.o: ../src/list.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab03/lab3_personnel/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/personnel.dir/src/list.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/personnel.dir/src/list.c.o   -c "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab03/lab3_personnel/src/list.c"

CMakeFiles/personnel.dir/src/list.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/personnel.dir/src/list.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab03/lab3_personnel/src/list.c" > CMakeFiles/personnel.dir/src/list.c.i

CMakeFiles/personnel.dir/src/list.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/personnel.dir/src/list.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab03/lab3_personnel/src/list.c" -o CMakeFiles/personnel.dir/src/list.c.s

CMakeFiles/personnel.dir/src/list.c.o.requires:

.PHONY : CMakeFiles/personnel.dir/src/list.c.o.requires

CMakeFiles/personnel.dir/src/list.c.o.provides: CMakeFiles/personnel.dir/src/list.c.o.requires
	$(MAKE) -f CMakeFiles/personnel.dir/build.make CMakeFiles/personnel.dir/src/list.c.o.provides.build
.PHONY : CMakeFiles/personnel.dir/src/list.c.o.provides

CMakeFiles/personnel.dir/src/list.c.o.provides.build: CMakeFiles/personnel.dir/src/list.c.o


CMakeFiles/personnel.dir/src/person.c.o: CMakeFiles/personnel.dir/flags.make
CMakeFiles/personnel.dir/src/person.c.o: ../src/person.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab03/lab3_personnel/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/personnel.dir/src/person.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/personnel.dir/src/person.c.o   -c "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab03/lab3_personnel/src/person.c"

CMakeFiles/personnel.dir/src/person.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/personnel.dir/src/person.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab03/lab3_personnel/src/person.c" > CMakeFiles/personnel.dir/src/person.c.i

CMakeFiles/personnel.dir/src/person.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/personnel.dir/src/person.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab03/lab3_personnel/src/person.c" -o CMakeFiles/personnel.dir/src/person.c.s

CMakeFiles/personnel.dir/src/person.c.o.requires:

.PHONY : CMakeFiles/personnel.dir/src/person.c.o.requires

CMakeFiles/personnel.dir/src/person.c.o.provides: CMakeFiles/personnel.dir/src/person.c.o.requires
	$(MAKE) -f CMakeFiles/personnel.dir/build.make CMakeFiles/personnel.dir/src/person.c.o.provides.build
.PHONY : CMakeFiles/personnel.dir/src/person.c.o.provides

CMakeFiles/personnel.dir/src/person.c.o.provides.build: CMakeFiles/personnel.dir/src/person.c.o


# Object files for target personnel
personnel_OBJECTS = \
"CMakeFiles/personnel.dir/src/main.c.o" \
"CMakeFiles/personnel.dir/src/list.c.o" \
"CMakeFiles/personnel.dir/src/person.c.o"

# External object files for target personnel
personnel_EXTERNAL_OBJECTS =

personnel: CMakeFiles/personnel.dir/src/main.c.o
personnel: CMakeFiles/personnel.dir/src/list.c.o
personnel: CMakeFiles/personnel.dir/src/person.c.o
personnel: CMakeFiles/personnel.dir/build.make
personnel: CMakeFiles/personnel.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab03/lab3_personnel/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable personnel"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/personnel.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/personnel.dir/build: personnel

.PHONY : CMakeFiles/personnel.dir/build

CMakeFiles/personnel.dir/requires: CMakeFiles/personnel.dir/src/main.c.o.requires
CMakeFiles/personnel.dir/requires: CMakeFiles/personnel.dir/src/list.c.o.requires
CMakeFiles/personnel.dir/requires: CMakeFiles/personnel.dir/src/person.c.o.requires

.PHONY : CMakeFiles/personnel.dir/requires

CMakeFiles/personnel.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/personnel.dir/cmake_clean.cmake
.PHONY : CMakeFiles/personnel.dir/clean

CMakeFiles/personnel.dir/depend:
	cd "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab03/lab3_personnel/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab03/lab3_personnel" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab03/lab3_personnel" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab03/lab3_personnel/cmake-build-debug" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab03/lab3_personnel/cmake-build-debug" "/mnt/c/Users/Ori's Lenovo/Desktop/School/comp_232/OriWeissLab03/lab3_personnel/cmake-build-debug/CMakeFiles/personnel.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/personnel.dir/depend

