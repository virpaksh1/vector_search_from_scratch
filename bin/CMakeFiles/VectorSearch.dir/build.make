# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/virpaksh/vector_search_from_scratch

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/virpaksh/vector_search_from_scratch/bin

# Include any dependencies generated for this target.
include CMakeFiles/VectorSearch.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/VectorSearch.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/VectorSearch.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/VectorSearch.dir/flags.make

CMakeFiles/VectorSearch.dir/main.cpp.o: CMakeFiles/VectorSearch.dir/flags.make
CMakeFiles/VectorSearch.dir/main.cpp.o: ../main.cpp
CMakeFiles/VectorSearch.dir/main.cpp.o: CMakeFiles/VectorSearch.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/virpaksh/vector_search_from_scratch/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/VectorSearch.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/VectorSearch.dir/main.cpp.o -MF CMakeFiles/VectorSearch.dir/main.cpp.o.d -o CMakeFiles/VectorSearch.dir/main.cpp.o -c /home/virpaksh/vector_search_from_scratch/main.cpp

CMakeFiles/VectorSearch.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VectorSearch.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/virpaksh/vector_search_from_scratch/main.cpp > CMakeFiles/VectorSearch.dir/main.cpp.i

CMakeFiles/VectorSearch.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VectorSearch.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/virpaksh/vector_search_from_scratch/main.cpp -o CMakeFiles/VectorSearch.dir/main.cpp.s

CMakeFiles/VectorSearch.dir/vector_search.cpp.o: CMakeFiles/VectorSearch.dir/flags.make
CMakeFiles/VectorSearch.dir/vector_search.cpp.o: ../vector_search.cpp
CMakeFiles/VectorSearch.dir/vector_search.cpp.o: CMakeFiles/VectorSearch.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/virpaksh/vector_search_from_scratch/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/VectorSearch.dir/vector_search.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/VectorSearch.dir/vector_search.cpp.o -MF CMakeFiles/VectorSearch.dir/vector_search.cpp.o.d -o CMakeFiles/VectorSearch.dir/vector_search.cpp.o -c /home/virpaksh/vector_search_from_scratch/vector_search.cpp

CMakeFiles/VectorSearch.dir/vector_search.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VectorSearch.dir/vector_search.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/virpaksh/vector_search_from_scratch/vector_search.cpp > CMakeFiles/VectorSearch.dir/vector_search.cpp.i

CMakeFiles/VectorSearch.dir/vector_search.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VectorSearch.dir/vector_search.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/virpaksh/vector_search_from_scratch/vector_search.cpp -o CMakeFiles/VectorSearch.dir/vector_search.cpp.s

# Object files for target VectorSearch
VectorSearch_OBJECTS = \
"CMakeFiles/VectorSearch.dir/main.cpp.o" \
"CMakeFiles/VectorSearch.dir/vector_search.cpp.o"

# External object files for target VectorSearch
VectorSearch_EXTERNAL_OBJECTS =

VectorSearch: CMakeFiles/VectorSearch.dir/main.cpp.o
VectorSearch: CMakeFiles/VectorSearch.dir/vector_search.cpp.o
VectorSearch: CMakeFiles/VectorSearch.dir/build.make
VectorSearch: CMakeFiles/VectorSearch.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/virpaksh/vector_search_from_scratch/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable VectorSearch"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/VectorSearch.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/VectorSearch.dir/build: VectorSearch
.PHONY : CMakeFiles/VectorSearch.dir/build

CMakeFiles/VectorSearch.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/VectorSearch.dir/cmake_clean.cmake
.PHONY : CMakeFiles/VectorSearch.dir/clean

CMakeFiles/VectorSearch.dir/depend:
	cd /home/virpaksh/vector_search_from_scratch/bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/virpaksh/vector_search_from_scratch /home/virpaksh/vector_search_from_scratch /home/virpaksh/vector_search_from_scratch/bin /home/virpaksh/vector_search_from_scratch/bin /home/virpaksh/vector_search_from_scratch/bin/CMakeFiles/VectorSearch.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/VectorSearch.dir/depend

