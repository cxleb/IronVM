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


CMakeFiles/IronVM.dir/iron/memory/stack.c.obj: CMakeFiles/IronVM.dir/flags.make
CMakeFiles/IronVM.dir/iron/memory/stack.c.obj: ../iron/memory/stack.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Programming\IronVM\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/IronVM.dir/iron/memory/stack.c.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\IronVM.dir\iron\memory\stack.c.obj   -c C:\Programming\IronVM\iron\memory\stack.c

CMakeFiles/IronVM.dir/iron/memory/stack.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/IronVM.dir/iron/memory/stack.c.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Programming\IronVM\iron\memory\stack.c > CMakeFiles\IronVM.dir\iron\memory\stack.c.i

CMakeFiles/IronVM.dir/iron/memory/stack.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/IronVM.dir/iron/memory/stack.c.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Programming\IronVM\iron\memory\stack.c -o CMakeFiles\IronVM.dir\iron\memory\stack.c.s

CMakeFiles/IronVM.dir/iron/memory/stack.c.obj.requires:

.PHONY : CMakeFiles/IronVM.dir/iron/memory/stack.c.obj.requires

CMakeFiles/IronVM.dir/iron/memory/stack.c.obj.provides: CMakeFiles/IronVM.dir/iron/memory/stack.c.obj.requires
	$(MAKE) -f CMakeFiles\IronVM.dir\build.make CMakeFiles/IronVM.dir/iron/memory/stack.c.obj.provides.build
.PHONY : CMakeFiles/IronVM.dir/iron/memory/stack.c.obj.provides

CMakeFiles/IronVM.dir/iron/memory/stack.c.obj.provides.build: CMakeFiles/IronVM.dir/iron/memory/stack.c.obj


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


CMakeFiles/IronVM.dir/iron/memory/ram.c.obj: CMakeFiles/IronVM.dir/flags.make
CMakeFiles/IronVM.dir/iron/memory/ram.c.obj: ../iron/memory/ram.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Programming\IronVM\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/IronVM.dir/iron/memory/ram.c.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\IronVM.dir\iron\memory\ram.c.obj   -c C:\Programming\IronVM\iron\memory\ram.c

CMakeFiles/IronVM.dir/iron/memory/ram.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/IronVM.dir/iron/memory/ram.c.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Programming\IronVM\iron\memory\ram.c > CMakeFiles\IronVM.dir\iron\memory\ram.c.i

CMakeFiles/IronVM.dir/iron/memory/ram.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/IronVM.dir/iron/memory/ram.c.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Programming\IronVM\iron\memory\ram.c -o CMakeFiles\IronVM.dir\iron\memory\ram.c.s

CMakeFiles/IronVM.dir/iron/memory/ram.c.obj.requires:

.PHONY : CMakeFiles/IronVM.dir/iron/memory/ram.c.obj.requires

CMakeFiles/IronVM.dir/iron/memory/ram.c.obj.provides: CMakeFiles/IronVM.dir/iron/memory/ram.c.obj.requires
	$(MAKE) -f CMakeFiles\IronVM.dir\build.make CMakeFiles/IronVM.dir/iron/memory/ram.c.obj.provides.build
.PHONY : CMakeFiles/IronVM.dir/iron/memory/ram.c.obj.provides

CMakeFiles/IronVM.dir/iron/memory/ram.c.obj.provides.build: CMakeFiles/IronVM.dir/iron/memory/ram.c.obj


CMakeFiles/IronVM.dir/iron/interpreter/interpretStack.c.obj: CMakeFiles/IronVM.dir/flags.make
CMakeFiles/IronVM.dir/iron/interpreter/interpretStack.c.obj: ../iron/interpreter/interpretStack.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Programming\IronVM\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/IronVM.dir/iron/interpreter/interpretStack.c.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\IronVM.dir\iron\interpreter\interpretStack.c.obj   -c C:\Programming\IronVM\iron\interpreter\interpretStack.c

CMakeFiles/IronVM.dir/iron/interpreter/interpretStack.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/IronVM.dir/iron/interpreter/interpretStack.c.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Programming\IronVM\iron\interpreter\interpretStack.c > CMakeFiles\IronVM.dir\iron\interpreter\interpretStack.c.i

CMakeFiles/IronVM.dir/iron/interpreter/interpretStack.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/IronVM.dir/iron/interpreter/interpretStack.c.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Programming\IronVM\iron\interpreter\interpretStack.c -o CMakeFiles\IronVM.dir\iron\interpreter\interpretStack.c.s

CMakeFiles/IronVM.dir/iron/interpreter/interpretStack.c.obj.requires:

.PHONY : CMakeFiles/IronVM.dir/iron/interpreter/interpretStack.c.obj.requires

CMakeFiles/IronVM.dir/iron/interpreter/interpretStack.c.obj.provides: CMakeFiles/IronVM.dir/iron/interpreter/interpretStack.c.obj.requires
	$(MAKE) -f CMakeFiles\IronVM.dir\build.make CMakeFiles/IronVM.dir/iron/interpreter/interpretStack.c.obj.provides.build
.PHONY : CMakeFiles/IronVM.dir/iron/interpreter/interpretStack.c.obj.provides

CMakeFiles/IronVM.dir/iron/interpreter/interpretStack.c.obj.provides.build: CMakeFiles/IronVM.dir/iron/interpreter/interpretStack.c.obj


CMakeFiles/IronVM.dir/iron/interpreter/interpretMemory.c.obj: CMakeFiles/IronVM.dir/flags.make
CMakeFiles/IronVM.dir/iron/interpreter/interpretMemory.c.obj: ../iron/interpreter/interpretMemory.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Programming\IronVM\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/IronVM.dir/iron/interpreter/interpretMemory.c.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\IronVM.dir\iron\interpreter\interpretMemory.c.obj   -c C:\Programming\IronVM\iron\interpreter\interpretMemory.c

CMakeFiles/IronVM.dir/iron/interpreter/interpretMemory.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/IronVM.dir/iron/interpreter/interpretMemory.c.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Programming\IronVM\iron\interpreter\interpretMemory.c > CMakeFiles\IronVM.dir\iron\interpreter\interpretMemory.c.i

CMakeFiles/IronVM.dir/iron/interpreter/interpretMemory.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/IronVM.dir/iron/interpreter/interpretMemory.c.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Programming\IronVM\iron\interpreter\interpretMemory.c -o CMakeFiles\IronVM.dir\iron\interpreter\interpretMemory.c.s

CMakeFiles/IronVM.dir/iron/interpreter/interpretMemory.c.obj.requires:

.PHONY : CMakeFiles/IronVM.dir/iron/interpreter/interpretMemory.c.obj.requires

CMakeFiles/IronVM.dir/iron/interpreter/interpretMemory.c.obj.provides: CMakeFiles/IronVM.dir/iron/interpreter/interpretMemory.c.obj.requires
	$(MAKE) -f CMakeFiles\IronVM.dir\build.make CMakeFiles/IronVM.dir/iron/interpreter/interpretMemory.c.obj.provides.build
.PHONY : CMakeFiles/IronVM.dir/iron/interpreter/interpretMemory.c.obj.provides

CMakeFiles/IronVM.dir/iron/interpreter/interpretMemory.c.obj.provides.build: CMakeFiles/IronVM.dir/iron/interpreter/interpretMemory.c.obj


CMakeFiles/IronVM.dir/iron/interpreter/interpretBranch.c.obj: CMakeFiles/IronVM.dir/flags.make
CMakeFiles/IronVM.dir/iron/interpreter/interpretBranch.c.obj: ../iron/interpreter/interpretBranch.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Programming\IronVM\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/IronVM.dir/iron/interpreter/interpretBranch.c.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\IronVM.dir\iron\interpreter\interpretBranch.c.obj   -c C:\Programming\IronVM\iron\interpreter\interpretBranch.c

CMakeFiles/IronVM.dir/iron/interpreter/interpretBranch.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/IronVM.dir/iron/interpreter/interpretBranch.c.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Programming\IronVM\iron\interpreter\interpretBranch.c > CMakeFiles\IronVM.dir\iron\interpreter\interpretBranch.c.i

CMakeFiles/IronVM.dir/iron/interpreter/interpretBranch.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/IronVM.dir/iron/interpreter/interpretBranch.c.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Programming\IronVM\iron\interpreter\interpretBranch.c -o CMakeFiles\IronVM.dir\iron\interpreter\interpretBranch.c.s

CMakeFiles/IronVM.dir/iron/interpreter/interpretBranch.c.obj.requires:

.PHONY : CMakeFiles/IronVM.dir/iron/interpreter/interpretBranch.c.obj.requires

CMakeFiles/IronVM.dir/iron/interpreter/interpretBranch.c.obj.provides: CMakeFiles/IronVM.dir/iron/interpreter/interpretBranch.c.obj.requires
	$(MAKE) -f CMakeFiles\IronVM.dir\build.make CMakeFiles/IronVM.dir/iron/interpreter/interpretBranch.c.obj.provides.build
.PHONY : CMakeFiles/IronVM.dir/iron/interpreter/interpretBranch.c.obj.provides

CMakeFiles/IronVM.dir/iron/interpreter/interpretBranch.c.obj.provides.build: CMakeFiles/IronVM.dir/iron/interpreter/interpretBranch.c.obj


CMakeFiles/IronVM.dir/iron/loader/binary.c.obj: CMakeFiles/IronVM.dir/flags.make
CMakeFiles/IronVM.dir/iron/loader/binary.c.obj: ../iron/loader/binary.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Programming\IronVM\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/IronVM.dir/iron/loader/binary.c.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\IronVM.dir\iron\loader\binary.c.obj   -c C:\Programming\IronVM\iron\loader\binary.c

CMakeFiles/IronVM.dir/iron/loader/binary.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/IronVM.dir/iron/loader/binary.c.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Programming\IronVM\iron\loader\binary.c > CMakeFiles\IronVM.dir\iron\loader\binary.c.i

CMakeFiles/IronVM.dir/iron/loader/binary.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/IronVM.dir/iron/loader/binary.c.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Programming\IronVM\iron\loader\binary.c -o CMakeFiles\IronVM.dir\iron\loader\binary.c.s

CMakeFiles/IronVM.dir/iron/loader/binary.c.obj.requires:

.PHONY : CMakeFiles/IronVM.dir/iron/loader/binary.c.obj.requires

CMakeFiles/IronVM.dir/iron/loader/binary.c.obj.provides: CMakeFiles/IronVM.dir/iron/loader/binary.c.obj.requires
	$(MAKE) -f CMakeFiles\IronVM.dir\build.make CMakeFiles/IronVM.dir/iron/loader/binary.c.obj.provides.build
.PHONY : CMakeFiles/IronVM.dir/iron/loader/binary.c.obj.provides

CMakeFiles/IronVM.dir/iron/loader/binary.c.obj.provides.build: CMakeFiles/IronVM.dir/iron/loader/binary.c.obj


CMakeFiles/IronVM.dir/iron/interpreter/interpretCompare.c.obj: CMakeFiles/IronVM.dir/flags.make
CMakeFiles/IronVM.dir/iron/interpreter/interpretCompare.c.obj: ../iron/interpreter/interpretCompare.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Programming\IronVM\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/IronVM.dir/iron/interpreter/interpretCompare.c.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\IronVM.dir\iron\interpreter\interpretCompare.c.obj   -c C:\Programming\IronVM\iron\interpreter\interpretCompare.c

CMakeFiles/IronVM.dir/iron/interpreter/interpretCompare.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/IronVM.dir/iron/interpreter/interpretCompare.c.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Programming\IronVM\iron\interpreter\interpretCompare.c > CMakeFiles\IronVM.dir\iron\interpreter\interpretCompare.c.i

CMakeFiles/IronVM.dir/iron/interpreter/interpretCompare.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/IronVM.dir/iron/interpreter/interpretCompare.c.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Programming\IronVM\iron\interpreter\interpretCompare.c -o CMakeFiles\IronVM.dir\iron\interpreter\interpretCompare.c.s

CMakeFiles/IronVM.dir/iron/interpreter/interpretCompare.c.obj.requires:

.PHONY : CMakeFiles/IronVM.dir/iron/interpreter/interpretCompare.c.obj.requires

CMakeFiles/IronVM.dir/iron/interpreter/interpretCompare.c.obj.provides: CMakeFiles/IronVM.dir/iron/interpreter/interpretCompare.c.obj.requires
	$(MAKE) -f CMakeFiles\IronVM.dir\build.make CMakeFiles/IronVM.dir/iron/interpreter/interpretCompare.c.obj.provides.build
.PHONY : CMakeFiles/IronVM.dir/iron/interpreter/interpretCompare.c.obj.provides

CMakeFiles/IronVM.dir/iron/interpreter/interpretCompare.c.obj.provides.build: CMakeFiles/IronVM.dir/iron/interpreter/interpretCompare.c.obj


CMakeFiles/IronVM.dir/iron/interpreter/interpretCallRet.c.obj: CMakeFiles/IronVM.dir/flags.make
CMakeFiles/IronVM.dir/iron/interpreter/interpretCallRet.c.obj: ../iron/interpreter/interpretCallRet.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Programming\IronVM\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/IronVM.dir/iron/interpreter/interpretCallRet.c.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\IronVM.dir\iron\interpreter\interpretCallRet.c.obj   -c C:\Programming\IronVM\iron\interpreter\interpretCallRet.c

CMakeFiles/IronVM.dir/iron/interpreter/interpretCallRet.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/IronVM.dir/iron/interpreter/interpretCallRet.c.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Programming\IronVM\iron\interpreter\interpretCallRet.c > CMakeFiles\IronVM.dir\iron\interpreter\interpretCallRet.c.i

CMakeFiles/IronVM.dir/iron/interpreter/interpretCallRet.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/IronVM.dir/iron/interpreter/interpretCallRet.c.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Programming\IronVM\iron\interpreter\interpretCallRet.c -o CMakeFiles\IronVM.dir\iron\interpreter\interpretCallRet.c.s

CMakeFiles/IronVM.dir/iron/interpreter/interpretCallRet.c.obj.requires:

.PHONY : CMakeFiles/IronVM.dir/iron/interpreter/interpretCallRet.c.obj.requires

CMakeFiles/IronVM.dir/iron/interpreter/interpretCallRet.c.obj.provides: CMakeFiles/IronVM.dir/iron/interpreter/interpretCallRet.c.obj.requires
	$(MAKE) -f CMakeFiles\IronVM.dir\build.make CMakeFiles/IronVM.dir/iron/interpreter/interpretCallRet.c.obj.provides.build
.PHONY : CMakeFiles/IronVM.dir/iron/interpreter/interpretCallRet.c.obj.provides

CMakeFiles/IronVM.dir/iron/interpreter/interpretCallRet.c.obj.provides.build: CMakeFiles/IronVM.dir/iron/interpreter/interpretCallRet.c.obj


CMakeFiles/IronVM.dir/iron/interpreter/interpretMath.c.obj: CMakeFiles/IronVM.dir/flags.make
CMakeFiles/IronVM.dir/iron/interpreter/interpretMath.c.obj: ../iron/interpreter/interpretMath.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Programming\IronVM\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/IronVM.dir/iron/interpreter/interpretMath.c.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\IronVM.dir\iron\interpreter\interpretMath.c.obj   -c C:\Programming\IronVM\iron\interpreter\interpretMath.c

CMakeFiles/IronVM.dir/iron/interpreter/interpretMath.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/IronVM.dir/iron/interpreter/interpretMath.c.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Programming\IronVM\iron\interpreter\interpretMath.c > CMakeFiles\IronVM.dir\iron\interpreter\interpretMath.c.i

CMakeFiles/IronVM.dir/iron/interpreter/interpretMath.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/IronVM.dir/iron/interpreter/interpretMath.c.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Programming\IronVM\iron\interpreter\interpretMath.c -o CMakeFiles\IronVM.dir\iron\interpreter\interpretMath.c.s

CMakeFiles/IronVM.dir/iron/interpreter/interpretMath.c.obj.requires:

.PHONY : CMakeFiles/IronVM.dir/iron/interpreter/interpretMath.c.obj.requires

CMakeFiles/IronVM.dir/iron/interpreter/interpretMath.c.obj.provides: CMakeFiles/IronVM.dir/iron/interpreter/interpretMath.c.obj.requires
	$(MAKE) -f CMakeFiles\IronVM.dir\build.make CMakeFiles/IronVM.dir/iron/interpreter/interpretMath.c.obj.provides.build
.PHONY : CMakeFiles/IronVM.dir/iron/interpreter/interpretMath.c.obj.provides

CMakeFiles/IronVM.dir/iron/interpreter/interpretMath.c.obj.provides.build: CMakeFiles/IronVM.dir/iron/interpreter/interpretMath.c.obj


CMakeFiles/IronVM.dir/iron/interpreter/interpretSyscall.c.obj: CMakeFiles/IronVM.dir/flags.make
CMakeFiles/IronVM.dir/iron/interpreter/interpretSyscall.c.obj: ../iron/interpreter/interpretSyscall.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Programming\IronVM\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/IronVM.dir/iron/interpreter/interpretSyscall.c.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\IronVM.dir\iron\interpreter\interpretSyscall.c.obj   -c C:\Programming\IronVM\iron\interpreter\interpretSyscall.c

CMakeFiles/IronVM.dir/iron/interpreter/interpretSyscall.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/IronVM.dir/iron/interpreter/interpretSyscall.c.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Programming\IronVM\iron\interpreter\interpretSyscall.c > CMakeFiles\IronVM.dir\iron\interpreter\interpretSyscall.c.i

CMakeFiles/IronVM.dir/iron/interpreter/interpretSyscall.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/IronVM.dir/iron/interpreter/interpretSyscall.c.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Programming\IronVM\iron\interpreter\interpretSyscall.c -o CMakeFiles\IronVM.dir\iron\interpreter\interpretSyscall.c.s

CMakeFiles/IronVM.dir/iron/interpreter/interpretSyscall.c.obj.requires:

.PHONY : CMakeFiles/IronVM.dir/iron/interpreter/interpretSyscall.c.obj.requires

CMakeFiles/IronVM.dir/iron/interpreter/interpretSyscall.c.obj.provides: CMakeFiles/IronVM.dir/iron/interpreter/interpretSyscall.c.obj.requires
	$(MAKE) -f CMakeFiles\IronVM.dir\build.make CMakeFiles/IronVM.dir/iron/interpreter/interpretSyscall.c.obj.provides.build
.PHONY : CMakeFiles/IronVM.dir/iron/interpreter/interpretSyscall.c.obj.provides

CMakeFiles/IronVM.dir/iron/interpreter/interpretSyscall.c.obj.provides.build: CMakeFiles/IronVM.dir/iron/interpreter/interpretSyscall.c.obj


CMakeFiles/IronVM.dir/iron/loader/ix.c.obj: CMakeFiles/IronVM.dir/flags.make
CMakeFiles/IronVM.dir/iron/loader/ix.c.obj: ../iron/loader/ix.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Programming\IronVM\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/IronVM.dir/iron/loader/ix.c.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\IronVM.dir\iron\loader\ix.c.obj   -c C:\Programming\IronVM\iron\loader\ix.c

CMakeFiles/IronVM.dir/iron/loader/ix.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/IronVM.dir/iron/loader/ix.c.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Programming\IronVM\iron\loader\ix.c > CMakeFiles\IronVM.dir\iron\loader\ix.c.i

CMakeFiles/IronVM.dir/iron/loader/ix.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/IronVM.dir/iron/loader/ix.c.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Programming\IronVM\iron\loader\ix.c -o CMakeFiles\IronVM.dir\iron\loader\ix.c.s

CMakeFiles/IronVM.dir/iron/loader/ix.c.obj.requires:

.PHONY : CMakeFiles/IronVM.dir/iron/loader/ix.c.obj.requires

CMakeFiles/IronVM.dir/iron/loader/ix.c.obj.provides: CMakeFiles/IronVM.dir/iron/loader/ix.c.obj.requires
	$(MAKE) -f CMakeFiles\IronVM.dir\build.make CMakeFiles/IronVM.dir/iron/loader/ix.c.obj.provides.build
.PHONY : CMakeFiles/IronVM.dir/iron/loader/ix.c.obj.provides

CMakeFiles/IronVM.dir/iron/loader/ix.c.obj.provides.build: CMakeFiles/IronVM.dir/iron/loader/ix.c.obj


# Object files for target IronVM
IronVM_OBJECTS = \
"CMakeFiles/IronVM.dir/main.c.obj" \
"CMakeFiles/IronVM.dir/iron/memory/stack.c.obj" \
"CMakeFiles/IronVM.dir/iron/vm.c.obj" \
"CMakeFiles/IronVM.dir/iron/memory/ram.c.obj" \
"CMakeFiles/IronVM.dir/iron/interpreter/interpretStack.c.obj" \
"CMakeFiles/IronVM.dir/iron/interpreter/interpretMemory.c.obj" \
"CMakeFiles/IronVM.dir/iron/interpreter/interpretBranch.c.obj" \
"CMakeFiles/IronVM.dir/iron/loader/binary.c.obj" \
"CMakeFiles/IronVM.dir/iron/interpreter/interpretCompare.c.obj" \
"CMakeFiles/IronVM.dir/iron/interpreter/interpretCallRet.c.obj" \
"CMakeFiles/IronVM.dir/iron/interpreter/interpretMath.c.obj" \
"CMakeFiles/IronVM.dir/iron/interpreter/interpretSyscall.c.obj" \
"CMakeFiles/IronVM.dir/iron/loader/ix.c.obj"

# External object files for target IronVM
IronVM_EXTERNAL_OBJECTS =

IronVM.exe: CMakeFiles/IronVM.dir/main.c.obj
IronVM.exe: CMakeFiles/IronVM.dir/iron/memory/stack.c.obj
IronVM.exe: CMakeFiles/IronVM.dir/iron/vm.c.obj
IronVM.exe: CMakeFiles/IronVM.dir/iron/memory/ram.c.obj
IronVM.exe: CMakeFiles/IronVM.dir/iron/interpreter/interpretStack.c.obj
IronVM.exe: CMakeFiles/IronVM.dir/iron/interpreter/interpretMemory.c.obj
IronVM.exe: CMakeFiles/IronVM.dir/iron/interpreter/interpretBranch.c.obj
IronVM.exe: CMakeFiles/IronVM.dir/iron/loader/binary.c.obj
IronVM.exe: CMakeFiles/IronVM.dir/iron/interpreter/interpretCompare.c.obj
IronVM.exe: CMakeFiles/IronVM.dir/iron/interpreter/interpretCallRet.c.obj
IronVM.exe: CMakeFiles/IronVM.dir/iron/interpreter/interpretMath.c.obj
IronVM.exe: CMakeFiles/IronVM.dir/iron/interpreter/interpretSyscall.c.obj
IronVM.exe: CMakeFiles/IronVM.dir/iron/loader/ix.c.obj
IronVM.exe: CMakeFiles/IronVM.dir/build.make
IronVM.exe: CMakeFiles/IronVM.dir/linklibs.rsp
IronVM.exe: CMakeFiles/IronVM.dir/objects1.rsp
IronVM.exe: CMakeFiles/IronVM.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Programming\IronVM\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking C executable IronVM.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\IronVM.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/IronVM.dir/build: IronVM.exe

.PHONY : CMakeFiles/IronVM.dir/build

CMakeFiles/IronVM.dir/requires: CMakeFiles/IronVM.dir/main.c.obj.requires
CMakeFiles/IronVM.dir/requires: CMakeFiles/IronVM.dir/iron/memory/stack.c.obj.requires
CMakeFiles/IronVM.dir/requires: CMakeFiles/IronVM.dir/iron/vm.c.obj.requires
CMakeFiles/IronVM.dir/requires: CMakeFiles/IronVM.dir/iron/memory/ram.c.obj.requires
CMakeFiles/IronVM.dir/requires: CMakeFiles/IronVM.dir/iron/interpreter/interpretStack.c.obj.requires
CMakeFiles/IronVM.dir/requires: CMakeFiles/IronVM.dir/iron/interpreter/interpretMemory.c.obj.requires
CMakeFiles/IronVM.dir/requires: CMakeFiles/IronVM.dir/iron/interpreter/interpretBranch.c.obj.requires
CMakeFiles/IronVM.dir/requires: CMakeFiles/IronVM.dir/iron/loader/binary.c.obj.requires
CMakeFiles/IronVM.dir/requires: CMakeFiles/IronVM.dir/iron/interpreter/interpretCompare.c.obj.requires
CMakeFiles/IronVM.dir/requires: CMakeFiles/IronVM.dir/iron/interpreter/interpretCallRet.c.obj.requires
CMakeFiles/IronVM.dir/requires: CMakeFiles/IronVM.dir/iron/interpreter/interpretMath.c.obj.requires
CMakeFiles/IronVM.dir/requires: CMakeFiles/IronVM.dir/iron/interpreter/interpretSyscall.c.obj.requires
CMakeFiles/IronVM.dir/requires: CMakeFiles/IronVM.dir/iron/loader/ix.c.obj.requires

.PHONY : CMakeFiles/IronVM.dir/requires

CMakeFiles/IronVM.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\IronVM.dir\cmake_clean.cmake
.PHONY : CMakeFiles/IronVM.dir/clean

CMakeFiles/IronVM.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Programming\IronVM C:\Programming\IronVM C:\Programming\IronVM\cmake-build-debug C:\Programming\IronVM\cmake-build-debug C:\Programming\IronVM\cmake-build-debug\CMakeFiles\IronVM.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/IronVM.dir/depend
