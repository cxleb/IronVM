# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.6

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files (x86)\JetBrains\CLion 2016.3.2\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files (x86)\JetBrains\CLion 2016.3.2\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Programming\IronVM

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Programming\IronVM\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/IronVM.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/IronVM.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/IronVM.dir/flags.make

CMakeFiles/IronVM.dir/main.c.obj: CMakeFiles/IronVM.dir/flags.make
CMakeFiles/IronVM.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Programming\IronVM\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/IronVM.dir/main.c.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\IronVM.dir\main.c.obj   -c C:\Programming\IronVM\main.c

CMakeFiles/IronVM.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/IronVM.dir/main.c.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Programming\IronVM\main.c > CMakeFiles\IronVM.dir\main.c.i

CMakeFiles/IronVM.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/IronVM.dir/main.c.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Programming\IronVM\main.c -o CMakeFiles\IronVM.dir\main.c.s

CMakeFiles/IronVM.dir/main.c.obj.requires:

.PHONY : CMakeFiles/IronVM.dir/main.c.obj.requires

CMakeFiles/IronVM.dir/main.c.obj.provides: CMakeFiles/IronVM.dir/main.c.obj.requires
	$(MAKE) -f CMakeFiles\IronVM.dir\build.make CMakeFiles/IronVM.dir/main.c.obj.provides.build
.PHONY : CMakeFiles/IronVM.dir/main.c.obj.provides

CMakeFiles/IronVM.dir/main.c.obj.provides.build: CMakeFiles/IronVM.dir/main.c.obj


CMakeFiles/IronVM.dir/iron/thread/thread.c.obj: CMakeFiles/IronVM.dir/flags.make
CMakeFiles/IronVM.dir/iron/thread/thread.c.obj: ../iron/thread/thread.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Programming\IronVM\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/IronVM.dir/iron/thread/thread.c.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\IronVM.dir\iron\thread\thread.c.obj   -c C:\Programming\IronVM\iron\thread\thread.c

CMakeFiles/IronVM.dir/iron/thread/thread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/IronVM.dir/iron/thread/thread.c.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Programming\IronVM\iron\thread\thread.c > CMakeFiles\IronVM.dir\iron\thread\thread.c.i

CMakeFiles/IronVM.dir/iron/thread/thread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/IronVM.dir/iron/thread/thread.c.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Programming\IronVM\iron\thread\thread.c -o CMakeFiles\IronVM.dir\iron\thread\thread.c.s

CMakeFiles/IronVM.dir/iron/thread/thread.c.obj.requires:

.PHONY : CMakeFiles/IronVM.dir/iron/thread/thread.c.obj.requires

CMakeFiles/IronVM.dir/iron/thread/thread.c.obj.provides: CMakeFiles/IronVM.dir/iron/thread/thread.c.obj.requires
	$(MAKE) -f CMakeFiles\IronVM.dir\build.make CMakeFiles/IronVM.dir/iron/thread/thread.c.obj.provides.build
.PHONY : CMakeFiles/IronVM.dir/iron/thread/thread.c.obj.provides

CMakeFiles/IronVM.dir/iron/thread/thread.c.obj.provides.build: CMakeFiles/IronVM.dir/iron/thread/thread.c.obj


CMakeFiles/IronVM.dir/iron/vm.c.obj: CMakeFiles/IronVM.dir/flags.make
CMakeFiles/IronVM.dir/iron/vm.c.obj: ../iron/vm.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Programming\IronVM\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/IronVM.dir/iron/vm.c.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\IronVM.dir\iron\vm.c.obj   -c C:\Programming\IronVM\iron\vm.c

CMakeFiles/IronVM.dir/iron/vm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/IronVM.dir/iron/vm.c.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Programming\IronVM\iron\vm.c > CMakeFiles\IronVM.dir\iron\vm.c.i

CMakeFiles/IronVM.dir/iron/vm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/IronVM.dir/iron/vm.c.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Programming\IronVM\iron\vm.c -o CMakeFiles\IronVM.dir\iron\vm.c.s

CMakeFiles/IronVM.dir/iron/vm.c.obj.requires:

.PHONY : CMakeFiles/IronVM.dir/iron/vm.c.obj.requires

CMakeFiles/IronVM.dir/iron/vm.c.obj.provides: CMakeFiles/IronVM.dir/iron/vm.c.obj.requires
	$(MAKE) -f CMakeFiles\IronVM.dir\build.make CMakeFiles/IronVM.dir/iron/vm.c.obj.provides.build
.PHONY : CMakeFiles/IronVM.dir/iron/vm.c.obj.provides

CMakeFiles/IronVM.dir/iron/vm.c.obj.provides.build: CMakeFiles/IronVM.dir/iron/vm.c.obj


# Object files for target IronVM
IronVM_OBJECTS = \
"CMakeFiles/IronVM.dir/main.c.obj" \
"CMakeFiles/IronVM.dir/iron/thread/thread.c.obj" \
"CMakeFiles/IronVM.dir/iron/vm.c.obj"

# External object files for target IronVM
IronVM_EXTERNAL_OBJECTS =

IronVM.exe: CMakeFiles/IronVM.dir/main.c.obj
IronVM.exe: CMakeFiles/IronVM.dir/iron/thread/thread.c.obj
IronVM.exe: CMakeFiles/IronVM.dir/iron/vm.c.obj
IronVM.exe: CMakeFiles/IronVM.dir/build.make
IronVM.exe: CMakeFiles/IronVM.dir/linklibs.rsp
IronVM.exe: CMakeFiles/IronVM.dir/objects1.rsp
IronVM.exe: CMakeFiles/IronVM.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Programming\IronVM\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable IronVM.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\IronVM.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/IronVM.dir/build: IronVM.exe

.PHONY : CMakeFiles/IronVM.dir/build

CMakeFiles/IronVM.dir/requires: CMakeFiles/IronVM.dir/main.c.obj.requires
CMakeFiles/IronVM.dir/requires: CMakeFiles/IronVM.dir/iron/thread/thread.c.obj.requires
CMakeFiles/IronVM.dir/requires: CMakeFiles/IronVM.dir/iron/vm.c.obj.requires

.PHONY : CMakeFiles/IronVM.dir/requires

CMakeFiles/IronVM.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\IronVM.dir\cmake_clean.cmake
.PHONY : CMakeFiles/IronVM.dir/clean

CMakeFiles/IronVM.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Programming\IronVM C:\Programming\IronVM C:\Programming\IronVM\cmake-build-debug C:\Programming\IronVM\cmake-build-debug C:\Programming\IronVM\cmake-build-debug\CMakeFiles\IronVM.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/IronVM.dir/depend

