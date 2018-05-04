# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/hal/workspace/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hal/workspace/build

# Utility rule file for siftgpu_proj.

# Include the progress variables for this target.
include rgbdslam/external/CMakeFiles/siftgpu_proj.dir/progress.make

rgbdslam/external/CMakeFiles/siftgpu_proj: rgbdslam/external/CMakeFiles/siftgpu_proj-complete


rgbdslam/external/CMakeFiles/siftgpu_proj-complete: rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-install
rgbdslam/external/CMakeFiles/siftgpu_proj-complete: rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-mkdir
rgbdslam/external/CMakeFiles/siftgpu_proj-complete: rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-download
rgbdslam/external/CMakeFiles/siftgpu_proj-complete: rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-update
rgbdslam/external/CMakeFiles/siftgpu_proj-complete: rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-patch
rgbdslam/external/CMakeFiles/siftgpu_proj-complete: rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-configure
rgbdslam/external/CMakeFiles/siftgpu_proj-complete: rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-build
rgbdslam/external/CMakeFiles/siftgpu_proj-complete: rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/hal/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'siftgpu_proj'"
	cd /home/hal/workspace/build/rgbdslam/external && /usr/bin/cmake -E make_directory /home/hal/workspace/build/rgbdslam/external/CMakeFiles
	cd /home/hal/workspace/build/rgbdslam/external && /usr/bin/cmake -E touch /home/hal/workspace/build/rgbdslam/external/CMakeFiles/siftgpu_proj-complete
	cd /home/hal/workspace/build/rgbdslam/external && /usr/bin/cmake -E touch /home/hal/workspace/build/rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-done

rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-install: rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/hal/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No install step for 'siftgpu_proj'"
	cd /home/hal/workspace/src/rgbdslam/external/SiftGPU && /usr/bin/cmake -E echo_append
	cd /home/hal/workspace/src/rgbdslam/external/SiftGPU && /usr/bin/cmake -E touch /home/hal/workspace/build/rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-install

rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/hal/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'siftgpu_proj'"
	cd /home/hal/workspace/build/rgbdslam/external && /usr/bin/cmake -E make_directory /home/hal/workspace/src/rgbdslam/external/SiftGPU/
	cd /home/hal/workspace/build/rgbdslam/external && /usr/bin/cmake -E make_directory /home/hal/workspace/src/rgbdslam/external/SiftGPU/
	cd /home/hal/workspace/build/rgbdslam/external && /usr/bin/cmake -E make_directory /home/hal/workspace/build/rgbdslam/external/siftgpu_prefix
	cd /home/hal/workspace/build/rgbdslam/external && /usr/bin/cmake -E make_directory /home/hal/workspace/build/rgbdslam/external/siftgpu_prefix/tmp
	cd /home/hal/workspace/build/rgbdslam/external && /usr/bin/cmake -E make_directory /home/hal/workspace/build/rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp
	cd /home/hal/workspace/build/rgbdslam/external && /usr/bin/cmake -E make_directory /home/hal/workspace/build/rgbdslam/external/siftgpu_prefix/src
	cd /home/hal/workspace/build/rgbdslam/external && /usr/bin/cmake -E touch /home/hal/workspace/build/rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-mkdir

rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-download: rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/hal/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "No download step for 'siftgpu_proj'"
	cd /home/hal/workspace/build/rgbdslam/external && /usr/bin/cmake -E echo_append
	cd /home/hal/workspace/build/rgbdslam/external && /usr/bin/cmake -E touch /home/hal/workspace/build/rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-download

rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-update: rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/hal/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No update step for 'siftgpu_proj'"
	cd /home/hal/workspace/build/rgbdslam/external && /usr/bin/cmake -E echo_append
	cd /home/hal/workspace/build/rgbdslam/external && /usr/bin/cmake -E touch /home/hal/workspace/build/rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-update

rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-patch: rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/hal/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'siftgpu_proj'"
	cd /home/hal/workspace/build/rgbdslam/external && /usr/bin/cmake -E echo_append
	cd /home/hal/workspace/build/rgbdslam/external && /usr/bin/cmake -E touch /home/hal/workspace/build/rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-patch

rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-configure: rgbdslam/external/siftgpu_prefix/tmp/siftgpu_proj-cfgcmd.txt
rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-configure: rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-update
rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-configure: rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/hal/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No configure step for 'siftgpu_proj'"
	cd /home/hal/workspace/src/rgbdslam/external/SiftGPU && /usr/bin/cmake -E echo_append
	cd /home/hal/workspace/src/rgbdslam/external/SiftGPU && /usr/bin/cmake -E touch /home/hal/workspace/build/rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-configure

rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-build: rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/hal/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'siftgpu_proj'"
	cd /home/hal/workspace/src/rgbdslam/external/SiftGPU && make
	cd /home/hal/workspace/src/rgbdslam/external/SiftGPU && /usr/bin/cmake -E touch /home/hal/workspace/build/rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-build

siftgpu_proj: rgbdslam/external/CMakeFiles/siftgpu_proj
siftgpu_proj: rgbdslam/external/CMakeFiles/siftgpu_proj-complete
siftgpu_proj: rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-install
siftgpu_proj: rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-mkdir
siftgpu_proj: rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-download
siftgpu_proj: rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-update
siftgpu_proj: rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-patch
siftgpu_proj: rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-configure
siftgpu_proj: rgbdslam/external/siftgpu_prefix/src/siftgpu_proj-stamp/siftgpu_proj-build
siftgpu_proj: rgbdslam/external/CMakeFiles/siftgpu_proj.dir/build.make

.PHONY : siftgpu_proj

# Rule to build all files generated by this target.
rgbdslam/external/CMakeFiles/siftgpu_proj.dir/build: siftgpu_proj

.PHONY : rgbdslam/external/CMakeFiles/siftgpu_proj.dir/build

rgbdslam/external/CMakeFiles/siftgpu_proj.dir/clean:
	cd /home/hal/workspace/build/rgbdslam/external && $(CMAKE_COMMAND) -P CMakeFiles/siftgpu_proj.dir/cmake_clean.cmake
.PHONY : rgbdslam/external/CMakeFiles/siftgpu_proj.dir/clean

rgbdslam/external/CMakeFiles/siftgpu_proj.dir/depend:
	cd /home/hal/workspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hal/workspace/src /home/hal/workspace/src/rgbdslam/external /home/hal/workspace/build /home/hal/workspace/build/rgbdslam/external /home/hal/workspace/build/rgbdslam/external/CMakeFiles/siftgpu_proj.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : rgbdslam/external/CMakeFiles/siftgpu_proj.dir/depend

