# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.27.7/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.27.7/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/kylehuang/Durham/MISCADA/Professional Skills/Course_work/1/gray-scott-sim"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/kylehuang/Durham/MISCADA/Professional Skills/Course_work/1/gray-scott-sim/build"

# Include any dependencies generated for this target.
include CMakeFiles/GrayScottSim.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/GrayScottSim.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/GrayScottSim.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/GrayScottSim.dir/flags.make

CMakeFiles/GrayScottSim.dir/gs.cpp.o: CMakeFiles/GrayScottSim.dir/flags.make
CMakeFiles/GrayScottSim.dir/gs.cpp.o: /Users/kylehuang/Durham/MISCADA/Professional\ Skills/Course_work/1/gray-scott-sim/gs.cpp
CMakeFiles/GrayScottSim.dir/gs.cpp.o: CMakeFiles/GrayScottSim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/kylehuang/Durham/MISCADA/Professional Skills/Course_work/1/gray-scott-sim/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/GrayScottSim.dir/gs.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/GrayScottSim.dir/gs.cpp.o -MF CMakeFiles/GrayScottSim.dir/gs.cpp.o.d -o CMakeFiles/GrayScottSim.dir/gs.cpp.o -c "/Users/kylehuang/Durham/MISCADA/Professional Skills/Course_work/1/gray-scott-sim/gs.cpp"

CMakeFiles/GrayScottSim.dir/gs.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/GrayScottSim.dir/gs.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/kylehuang/Durham/MISCADA/Professional Skills/Course_work/1/gray-scott-sim/gs.cpp" > CMakeFiles/GrayScottSim.dir/gs.cpp.i

CMakeFiles/GrayScottSim.dir/gs.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/GrayScottSim.dir/gs.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/kylehuang/Durham/MISCADA/Professional Skills/Course_work/1/gray-scott-sim/gs.cpp" -o CMakeFiles/GrayScottSim.dir/gs.cpp.s

# Object files for target GrayScottSim
GrayScottSim_OBJECTS = \
"CMakeFiles/GrayScottSim.dir/gs.cpp.o"

# External object files for target GrayScottSim
GrayScottSim_EXTERNAL_OBJECTS =

GrayScottSim: CMakeFiles/GrayScottSim.dir/gs.cpp.o
GrayScottSim: CMakeFiles/GrayScottSim.dir/build.make
GrayScottSim: CMakeFiles/GrayScottSim.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/Users/kylehuang/Durham/MISCADA/Professional Skills/Course_work/1/gray-scott-sim/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable GrayScottSim"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/GrayScottSim.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/GrayScottSim.dir/build: GrayScottSim
.PHONY : CMakeFiles/GrayScottSim.dir/build

CMakeFiles/GrayScottSim.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/GrayScottSim.dir/cmake_clean.cmake
.PHONY : CMakeFiles/GrayScottSim.dir/clean

CMakeFiles/GrayScottSim.dir/depend:
	cd "/Users/kylehuang/Durham/MISCADA/Professional Skills/Course_work/1/gray-scott-sim/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/kylehuang/Durham/MISCADA/Professional Skills/Course_work/1/gray-scott-sim" "/Users/kylehuang/Durham/MISCADA/Professional Skills/Course_work/1/gray-scott-sim" "/Users/kylehuang/Durham/MISCADA/Professional Skills/Course_work/1/gray-scott-sim/build" "/Users/kylehuang/Durham/MISCADA/Professional Skills/Course_work/1/gray-scott-sim/build" "/Users/kylehuang/Durham/MISCADA/Professional Skills/Course_work/1/gray-scott-sim/build/CMakeFiles/GrayScottSim.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/GrayScottSim.dir/depend

