# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /cygdrive/c/Users/renda/.CLion2017.3/system/cygwin_cmake/bin/cmake.exe

# The command to remove a file.
RM = /cygdrive/c/Users/renda/.CLion2017.3/system/cygwin_cmake/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /cygdrive/c/Users/renda/Desktop/Git/Algoritmiek

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cygdrive/c/Users/renda/Desktop/Git/Algoritmiek/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/testing.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/testing.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testing.dir/flags.make

CMakeFiles/testing.dir/testing.cpp.o: CMakeFiles/testing.dir/flags.make
CMakeFiles/testing.dir/testing.cpp.o: ../testing.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/renda/Desktop/Git/Algoritmiek/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/testing.dir/testing.cpp.o"
	/usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testing.dir/testing.cpp.o -c /cygdrive/c/Users/renda/Desktop/Git/Algoritmiek/testing.cpp

CMakeFiles/testing.dir/testing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testing.dir/testing.cpp.i"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/c/Users/renda/Desktop/Git/Algoritmiek/testing.cpp > CMakeFiles/testing.dir/testing.cpp.i

CMakeFiles/testing.dir/testing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testing.dir/testing.cpp.s"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/c/Users/renda/Desktop/Git/Algoritmiek/testing.cpp -o CMakeFiles/testing.dir/testing.cpp.s

CMakeFiles/testing.dir/testing.cpp.o.requires:

.PHONY : CMakeFiles/testing.dir/testing.cpp.o.requires

CMakeFiles/testing.dir/testing.cpp.o.provides: CMakeFiles/testing.dir/testing.cpp.o.requires
	$(MAKE) -f CMakeFiles/testing.dir/build.make CMakeFiles/testing.dir/testing.cpp.o.provides.build
.PHONY : CMakeFiles/testing.dir/testing.cpp.o.provides

CMakeFiles/testing.dir/testing.cpp.o.provides.build: CMakeFiles/testing.dir/testing.cpp.o


# Object files for target testing
testing_OBJECTS = \
"CMakeFiles/testing.dir/testing.cpp.o"

# External object files for target testing
testing_EXTERNAL_OBJECTS =

testing.exe: CMakeFiles/testing.dir/testing.cpp.o
testing.exe: CMakeFiles/testing.dir/build.make
testing.exe: CMakeFiles/testing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cygdrive/c/Users/renda/Desktop/Git/Algoritmiek/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testing.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/testing.dir/build: testing.exe

.PHONY : CMakeFiles/testing.dir/build

CMakeFiles/testing.dir/requires: CMakeFiles/testing.dir/testing.cpp.o.requires

.PHONY : CMakeFiles/testing.dir/requires

CMakeFiles/testing.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testing.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testing.dir/clean

CMakeFiles/testing.dir/depend:
	cd /cygdrive/c/Users/renda/Desktop/Git/Algoritmiek/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/c/Users/renda/Desktop/Git/Algoritmiek /cygdrive/c/Users/renda/Desktop/Git/Algoritmiek /cygdrive/c/Users/renda/Desktop/Git/Algoritmiek/cmake-build-debug /cygdrive/c/Users/renda/Desktop/Git/Algoritmiek/cmake-build-debug /cygdrive/c/Users/renda/Desktop/Git/Algoritmiek/cmake-build-debug/CMakeFiles/testing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testing.dir/depend
