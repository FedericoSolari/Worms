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
CMAKE_SOURCE_DIR = /home/fede/Documentos/Taller/tp-worms

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/fede/Documentos/Taller/tp-worms/build

# Include any dependencies generated for this target.
include CMakeFiles/server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/server.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/server.dir/flags.make

CMakeFiles/server.dir/common/Dtos/dead.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/common/Dtos/dead.cpp.o: ../common/Dtos/dead.cpp
CMakeFiles/server.dir/common/Dtos/dead.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fede/Documentos/Taller/tp-worms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/server.dir/common/Dtos/dead.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/common/Dtos/dead.cpp.o -MF CMakeFiles/server.dir/common/Dtos/dead.cpp.o.d -o CMakeFiles/server.dir/common/Dtos/dead.cpp.o -c /home/fede/Documentos/Taller/tp-worms/common/Dtos/dead.cpp

CMakeFiles/server.dir/common/Dtos/dead.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/common/Dtos/dead.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fede/Documentos/Taller/tp-worms/common/Dtos/dead.cpp > CMakeFiles/server.dir/common/Dtos/dead.cpp.i

CMakeFiles/server.dir/common/Dtos/dead.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/common/Dtos/dead.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fede/Documentos/Taller/tp-worms/common/Dtos/dead.cpp -o CMakeFiles/server.dir/common/Dtos/dead.cpp.s

CMakeFiles/server.dir/common/Dtos/dto.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/common/Dtos/dto.cpp.o: ../common/Dtos/dto.cpp
CMakeFiles/server.dir/common/Dtos/dto.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fede/Documentos/Taller/tp-worms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/server.dir/common/Dtos/dto.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/common/Dtos/dto.cpp.o -MF CMakeFiles/server.dir/common/Dtos/dto.cpp.o.d -o CMakeFiles/server.dir/common/Dtos/dto.cpp.o -c /home/fede/Documentos/Taller/tp-worms/common/Dtos/dto.cpp

CMakeFiles/server.dir/common/Dtos/dto.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/common/Dtos/dto.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fede/Documentos/Taller/tp-worms/common/Dtos/dto.cpp > CMakeFiles/server.dir/common/Dtos/dto.cpp.i

CMakeFiles/server.dir/common/Dtos/dto.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/common/Dtos/dto.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fede/Documentos/Taller/tp-worms/common/Dtos/dto.cpp -o CMakeFiles/server.dir/common/Dtos/dto.cpp.s

CMakeFiles/server.dir/common/Dtos/position.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/common/Dtos/position.cpp.o: ../common/Dtos/position.cpp
CMakeFiles/server.dir/common/Dtos/position.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fede/Documentos/Taller/tp-worms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/server.dir/common/Dtos/position.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/common/Dtos/position.cpp.o -MF CMakeFiles/server.dir/common/Dtos/position.cpp.o.d -o CMakeFiles/server.dir/common/Dtos/position.cpp.o -c /home/fede/Documentos/Taller/tp-worms/common/Dtos/position.cpp

CMakeFiles/server.dir/common/Dtos/position.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/common/Dtos/position.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fede/Documentos/Taller/tp-worms/common/Dtos/position.cpp > CMakeFiles/server.dir/common/Dtos/position.cpp.i

CMakeFiles/server.dir/common/Dtos/position.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/common/Dtos/position.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fede/Documentos/Taller/tp-worms/common/Dtos/position.cpp -o CMakeFiles/server.dir/common/Dtos/position.cpp.s

CMakeFiles/server.dir/common/Dtos/viga.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/common/Dtos/viga.cpp.o: ../common/Dtos/viga.cpp
CMakeFiles/server.dir/common/Dtos/viga.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fede/Documentos/Taller/tp-worms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/server.dir/common/Dtos/viga.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/common/Dtos/viga.cpp.o -MF CMakeFiles/server.dir/common/Dtos/viga.cpp.o.d -o CMakeFiles/server.dir/common/Dtos/viga.cpp.o -c /home/fede/Documentos/Taller/tp-worms/common/Dtos/viga.cpp

CMakeFiles/server.dir/common/Dtos/viga.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/common/Dtos/viga.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fede/Documentos/Taller/tp-worms/common/Dtos/viga.cpp > CMakeFiles/server.dir/common/Dtos/viga.cpp.i

CMakeFiles/server.dir/common/Dtos/viga.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/common/Dtos/viga.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fede/Documentos/Taller/tp-worms/common/Dtos/viga.cpp -o CMakeFiles/server.dir/common/Dtos/viga.cpp.s

CMakeFiles/server.dir/common/blockingqueue.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/common/blockingqueue.cpp.o: ../common/blockingqueue.cpp
CMakeFiles/server.dir/common/blockingqueue.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fede/Documentos/Taller/tp-worms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/server.dir/common/blockingqueue.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/common/blockingqueue.cpp.o -MF CMakeFiles/server.dir/common/blockingqueue.cpp.o.d -o CMakeFiles/server.dir/common/blockingqueue.cpp.o -c /home/fede/Documentos/Taller/tp-worms/common/blockingqueue.cpp

CMakeFiles/server.dir/common/blockingqueue.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/common/blockingqueue.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fede/Documentos/Taller/tp-worms/common/blockingqueue.cpp > CMakeFiles/server.dir/common/blockingqueue.cpp.i

CMakeFiles/server.dir/common/blockingqueue.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/common/blockingqueue.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fede/Documentos/Taller/tp-worms/common/blockingqueue.cpp -o CMakeFiles/server.dir/common/blockingqueue.cpp.s

CMakeFiles/server.dir/common/broadcaster.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/common/broadcaster.cpp.o: ../common/broadcaster.cpp
CMakeFiles/server.dir/common/broadcaster.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fede/Documentos/Taller/tp-worms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/server.dir/common/broadcaster.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/common/broadcaster.cpp.o -MF CMakeFiles/server.dir/common/broadcaster.cpp.o.d -o CMakeFiles/server.dir/common/broadcaster.cpp.o -c /home/fede/Documentos/Taller/tp-worms/common/broadcaster.cpp

CMakeFiles/server.dir/common/broadcaster.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/common/broadcaster.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fede/Documentos/Taller/tp-worms/common/broadcaster.cpp > CMakeFiles/server.dir/common/broadcaster.cpp.i

CMakeFiles/server.dir/common/broadcaster.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/common/broadcaster.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fede/Documentos/Taller/tp-worms/common/broadcaster.cpp -o CMakeFiles/server.dir/common/broadcaster.cpp.s

CMakeFiles/server.dir/common/liberror.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/common/liberror.cpp.o: ../common/liberror.cpp
CMakeFiles/server.dir/common/liberror.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fede/Documentos/Taller/tp-worms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/server.dir/common/liberror.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/common/liberror.cpp.o -MF CMakeFiles/server.dir/common/liberror.cpp.o.d -o CMakeFiles/server.dir/common/liberror.cpp.o -c /home/fede/Documentos/Taller/tp-worms/common/liberror.cpp

CMakeFiles/server.dir/common/liberror.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/common/liberror.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fede/Documentos/Taller/tp-worms/common/liberror.cpp > CMakeFiles/server.dir/common/liberror.cpp.i

CMakeFiles/server.dir/common/liberror.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/common/liberror.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fede/Documentos/Taller/tp-worms/common/liberror.cpp -o CMakeFiles/server.dir/common/liberror.cpp.s

CMakeFiles/server.dir/common/resolver.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/common/resolver.cpp.o: ../common/resolver.cpp
CMakeFiles/server.dir/common/resolver.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fede/Documentos/Taller/tp-worms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/server.dir/common/resolver.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/common/resolver.cpp.o -MF CMakeFiles/server.dir/common/resolver.cpp.o.d -o CMakeFiles/server.dir/common/resolver.cpp.o -c /home/fede/Documentos/Taller/tp-worms/common/resolver.cpp

CMakeFiles/server.dir/common/resolver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/common/resolver.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fede/Documentos/Taller/tp-worms/common/resolver.cpp > CMakeFiles/server.dir/common/resolver.cpp.i

CMakeFiles/server.dir/common/resolver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/common/resolver.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fede/Documentos/Taller/tp-worms/common/resolver.cpp -o CMakeFiles/server.dir/common/resolver.cpp.s

CMakeFiles/server.dir/common/resolvererror.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/common/resolvererror.cpp.o: ../common/resolvererror.cpp
CMakeFiles/server.dir/common/resolvererror.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fede/Documentos/Taller/tp-worms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/server.dir/common/resolvererror.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/common/resolvererror.cpp.o -MF CMakeFiles/server.dir/common/resolvererror.cpp.o.d -o CMakeFiles/server.dir/common/resolvererror.cpp.o -c /home/fede/Documentos/Taller/tp-worms/common/resolvererror.cpp

CMakeFiles/server.dir/common/resolvererror.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/common/resolvererror.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fede/Documentos/Taller/tp-worms/common/resolvererror.cpp > CMakeFiles/server.dir/common/resolvererror.cpp.i

CMakeFiles/server.dir/common/resolvererror.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/common/resolvererror.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fede/Documentos/Taller/tp-worms/common/resolvererror.cpp -o CMakeFiles/server.dir/common/resolvererror.cpp.s

CMakeFiles/server.dir/common/socket.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/common/socket.cpp.o: ../common/socket.cpp
CMakeFiles/server.dir/common/socket.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fede/Documentos/Taller/tp-worms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/server.dir/common/socket.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/common/socket.cpp.o -MF CMakeFiles/server.dir/common/socket.cpp.o.d -o CMakeFiles/server.dir/common/socket.cpp.o -c /home/fede/Documentos/Taller/tp-worms/common/socket.cpp

CMakeFiles/server.dir/common/socket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/common/socket.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fede/Documentos/Taller/tp-worms/common/socket.cpp > CMakeFiles/server.dir/common/socket.cpp.i

CMakeFiles/server.dir/common/socket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/common/socket.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fede/Documentos/Taller/tp-worms/common/socket.cpp -o CMakeFiles/server.dir/common/socket.cpp.s

CMakeFiles/server.dir/common/wrap_socket.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/common/wrap_socket.cpp.o: ../common/wrap_socket.cpp
CMakeFiles/server.dir/common/wrap_socket.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fede/Documentos/Taller/tp-worms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/server.dir/common/wrap_socket.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/common/wrap_socket.cpp.o -MF CMakeFiles/server.dir/common/wrap_socket.cpp.o.d -o CMakeFiles/server.dir/common/wrap_socket.cpp.o -c /home/fede/Documentos/Taller/tp-worms/common/wrap_socket.cpp

CMakeFiles/server.dir/common/wrap_socket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/common/wrap_socket.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fede/Documentos/Taller/tp-worms/common/wrap_socket.cpp > CMakeFiles/server.dir/common/wrap_socket.cpp.i

CMakeFiles/server.dir/common/wrap_socket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/common/wrap_socket.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fede/Documentos/Taller/tp-worms/common/wrap_socket.cpp -o CMakeFiles/server.dir/common/wrap_socket.cpp.s

CMakeFiles/server.dir/server/aceptador.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/server/aceptador.cpp.o: ../server/aceptador.cpp
CMakeFiles/server.dir/server/aceptador.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fede/Documentos/Taller/tp-worms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/server.dir/server/aceptador.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/server/aceptador.cpp.o -MF CMakeFiles/server.dir/server/aceptador.cpp.o.d -o CMakeFiles/server.dir/server/aceptador.cpp.o -c /home/fede/Documentos/Taller/tp-worms/server/aceptador.cpp

CMakeFiles/server.dir/server/aceptador.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/server/aceptador.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fede/Documentos/Taller/tp-worms/server/aceptador.cpp > CMakeFiles/server.dir/server/aceptador.cpp.i

CMakeFiles/server.dir/server/aceptador.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/server/aceptador.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fede/Documentos/Taller/tp-worms/server/aceptador.cpp -o CMakeFiles/server.dir/server/aceptador.cpp.s

CMakeFiles/server.dir/server/beam.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/server/beam.cpp.o: ../server/beam.cpp
CMakeFiles/server.dir/server/beam.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fede/Documentos/Taller/tp-worms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/server.dir/server/beam.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/server/beam.cpp.o -MF CMakeFiles/server.dir/server/beam.cpp.o.d -o CMakeFiles/server.dir/server/beam.cpp.o -c /home/fede/Documentos/Taller/tp-worms/server/beam.cpp

CMakeFiles/server.dir/server/beam.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/server/beam.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fede/Documentos/Taller/tp-worms/server/beam.cpp > CMakeFiles/server.dir/server/beam.cpp.i

CMakeFiles/server.dir/server/beam.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/server/beam.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fede/Documentos/Taller/tp-worms/server/beam.cpp -o CMakeFiles/server.dir/server/beam.cpp.s

CMakeFiles/server.dir/server/game.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/server/game.cpp.o: ../server/game.cpp
CMakeFiles/server.dir/server/game.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fede/Documentos/Taller/tp-worms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/server.dir/server/game.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/server/game.cpp.o -MF CMakeFiles/server.dir/server/game.cpp.o.d -o CMakeFiles/server.dir/server/game.cpp.o -c /home/fede/Documentos/Taller/tp-worms/server/game.cpp

CMakeFiles/server.dir/server/game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/server/game.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fede/Documentos/Taller/tp-worms/server/game.cpp > CMakeFiles/server.dir/server/game.cpp.i

CMakeFiles/server.dir/server/game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/server/game.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fede/Documentos/Taller/tp-worms/server/game.cpp -o CMakeFiles/server.dir/server/game.cpp.s

CMakeFiles/server.dir/server/lobby.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/server/lobby.cpp.o: ../server/lobby.cpp
CMakeFiles/server.dir/server/lobby.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fede/Documentos/Taller/tp-worms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/server.dir/server/lobby.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/server/lobby.cpp.o -MF CMakeFiles/server.dir/server/lobby.cpp.o.d -o CMakeFiles/server.dir/server/lobby.cpp.o -c /home/fede/Documentos/Taller/tp-worms/server/lobby.cpp

CMakeFiles/server.dir/server/lobby.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/server/lobby.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fede/Documentos/Taller/tp-worms/server/lobby.cpp > CMakeFiles/server.dir/server/lobby.cpp.i

CMakeFiles/server.dir/server/lobby.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/server/lobby.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fede/Documentos/Taller/tp-worms/server/lobby.cpp -o CMakeFiles/server.dir/server/lobby.cpp.s

CMakeFiles/server.dir/server/main.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/server/main.cpp.o: ../server/main.cpp
CMakeFiles/server.dir/server/main.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fede/Documentos/Taller/tp-worms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/server.dir/server/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/server/main.cpp.o -MF CMakeFiles/server.dir/server/main.cpp.o.d -o CMakeFiles/server.dir/server/main.cpp.o -c /home/fede/Documentos/Taller/tp-worms/server/main.cpp

CMakeFiles/server.dir/server/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/server/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fede/Documentos/Taller/tp-worms/server/main.cpp > CMakeFiles/server.dir/server/main.cpp.i

CMakeFiles/server.dir/server/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/server/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fede/Documentos/Taller/tp-worms/server/main.cpp -o CMakeFiles/server.dir/server/main.cpp.s

CMakeFiles/server.dir/server/receiver_thread.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/server/receiver_thread.cpp.o: ../server/receiver_thread.cpp
CMakeFiles/server.dir/server/receiver_thread.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fede/Documentos/Taller/tp-worms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/server.dir/server/receiver_thread.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/server/receiver_thread.cpp.o -MF CMakeFiles/server.dir/server/receiver_thread.cpp.o.d -o CMakeFiles/server.dir/server/receiver_thread.cpp.o -c /home/fede/Documentos/Taller/tp-worms/server/receiver_thread.cpp

CMakeFiles/server.dir/server/receiver_thread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/server/receiver_thread.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fede/Documentos/Taller/tp-worms/server/receiver_thread.cpp > CMakeFiles/server.dir/server/receiver_thread.cpp.i

CMakeFiles/server.dir/server/receiver_thread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/server/receiver_thread.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fede/Documentos/Taller/tp-worms/server/receiver_thread.cpp -o CMakeFiles/server.dir/server/receiver_thread.cpp.s

CMakeFiles/server.dir/server/sender_thread.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/server/sender_thread.cpp.o: ../server/sender_thread.cpp
CMakeFiles/server.dir/server/sender_thread.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fede/Documentos/Taller/tp-worms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object CMakeFiles/server.dir/server/sender_thread.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/server/sender_thread.cpp.o -MF CMakeFiles/server.dir/server/sender_thread.cpp.o.d -o CMakeFiles/server.dir/server/sender_thread.cpp.o -c /home/fede/Documentos/Taller/tp-worms/server/sender_thread.cpp

CMakeFiles/server.dir/server/sender_thread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/server/sender_thread.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fede/Documentos/Taller/tp-worms/server/sender_thread.cpp > CMakeFiles/server.dir/server/sender_thread.cpp.i

CMakeFiles/server.dir/server/sender_thread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/server/sender_thread.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fede/Documentos/Taller/tp-worms/server/sender_thread.cpp -o CMakeFiles/server.dir/server/sender_thread.cpp.s

CMakeFiles/server.dir/server/server.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/server/server.cpp.o: ../server/server.cpp
CMakeFiles/server.dir/server/server.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fede/Documentos/Taller/tp-worms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building CXX object CMakeFiles/server.dir/server/server.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/server/server.cpp.o -MF CMakeFiles/server.dir/server/server.cpp.o.d -o CMakeFiles/server.dir/server/server.cpp.o -c /home/fede/Documentos/Taller/tp-worms/server/server.cpp

CMakeFiles/server.dir/server/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/server/server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fede/Documentos/Taller/tp-worms/server/server.cpp > CMakeFiles/server.dir/server/server.cpp.i

CMakeFiles/server.dir/server/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/server/server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fede/Documentos/Taller/tp-worms/server/server.cpp -o CMakeFiles/server.dir/server/server.cpp.s

CMakeFiles/server.dir/server/server_client.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/server/server_client.cpp.o: ../server/server_client.cpp
CMakeFiles/server.dir/server/server_client.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fede/Documentos/Taller/tp-worms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Building CXX object CMakeFiles/server.dir/server/server_client.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/server/server_client.cpp.o -MF CMakeFiles/server.dir/server/server_client.cpp.o.d -o CMakeFiles/server.dir/server/server_client.cpp.o -c /home/fede/Documentos/Taller/tp-worms/server/server_client.cpp

CMakeFiles/server.dir/server/server_client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/server/server_client.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fede/Documentos/Taller/tp-worms/server/server_client.cpp > CMakeFiles/server.dir/server/server_client.cpp.i

CMakeFiles/server.dir/server/server_client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/server/server_client.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fede/Documentos/Taller/tp-worms/server/server_client.cpp -o CMakeFiles/server.dir/server/server_client.cpp.s

CMakeFiles/server.dir/server/server_protocol.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/server/server_protocol.cpp.o: ../server/server_protocol.cpp
CMakeFiles/server.dir/server/server_protocol.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fede/Documentos/Taller/tp-worms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_21) "Building CXX object CMakeFiles/server.dir/server/server_protocol.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/server/server_protocol.cpp.o -MF CMakeFiles/server.dir/server/server_protocol.cpp.o.d -o CMakeFiles/server.dir/server/server_protocol.cpp.o -c /home/fede/Documentos/Taller/tp-worms/server/server_protocol.cpp

CMakeFiles/server.dir/server/server_protocol.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/server/server_protocol.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fede/Documentos/Taller/tp-worms/server/server_protocol.cpp > CMakeFiles/server.dir/server/server_protocol.cpp.i

CMakeFiles/server.dir/server/server_protocol.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/server/server_protocol.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fede/Documentos/Taller/tp-worms/server/server_protocol.cpp -o CMakeFiles/server.dir/server/server_protocol.cpp.s

CMakeFiles/server.dir/server/world.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/server/world.cpp.o: ../server/world.cpp
CMakeFiles/server.dir/server/world.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fede/Documentos/Taller/tp-worms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_22) "Building CXX object CMakeFiles/server.dir/server/world.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/server/world.cpp.o -MF CMakeFiles/server.dir/server/world.cpp.o.d -o CMakeFiles/server.dir/server/world.cpp.o -c /home/fede/Documentos/Taller/tp-worms/server/world.cpp

CMakeFiles/server.dir/server/world.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/server/world.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fede/Documentos/Taller/tp-worms/server/world.cpp > CMakeFiles/server.dir/server/world.cpp.i

CMakeFiles/server.dir/server/world.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/server/world.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fede/Documentos/Taller/tp-worms/server/world.cpp -o CMakeFiles/server.dir/server/world.cpp.s

# Object files for target server
server_OBJECTS = \
"CMakeFiles/server.dir/common/Dtos/dead.cpp.o" \
"CMakeFiles/server.dir/common/Dtos/dto.cpp.o" \
"CMakeFiles/server.dir/common/Dtos/position.cpp.o" \
"CMakeFiles/server.dir/common/Dtos/viga.cpp.o" \
"CMakeFiles/server.dir/common/blockingqueue.cpp.o" \
"CMakeFiles/server.dir/common/broadcaster.cpp.o" \
"CMakeFiles/server.dir/common/liberror.cpp.o" \
"CMakeFiles/server.dir/common/resolver.cpp.o" \
"CMakeFiles/server.dir/common/resolvererror.cpp.o" \
"CMakeFiles/server.dir/common/socket.cpp.o" \
"CMakeFiles/server.dir/common/wrap_socket.cpp.o" \
"CMakeFiles/server.dir/server/aceptador.cpp.o" \
"CMakeFiles/server.dir/server/beam.cpp.o" \
"CMakeFiles/server.dir/server/game.cpp.o" \
"CMakeFiles/server.dir/server/lobby.cpp.o" \
"CMakeFiles/server.dir/server/main.cpp.o" \
"CMakeFiles/server.dir/server/receiver_thread.cpp.o" \
"CMakeFiles/server.dir/server/sender_thread.cpp.o" \
"CMakeFiles/server.dir/server/server.cpp.o" \
"CMakeFiles/server.dir/server/server_client.cpp.o" \
"CMakeFiles/server.dir/server/server_protocol.cpp.o" \
"CMakeFiles/server.dir/server/world.cpp.o"

# External object files for target server
server_EXTERNAL_OBJECTS =

server: CMakeFiles/server.dir/common/Dtos/dead.cpp.o
server: CMakeFiles/server.dir/common/Dtos/dto.cpp.o
server: CMakeFiles/server.dir/common/Dtos/position.cpp.o
server: CMakeFiles/server.dir/common/Dtos/viga.cpp.o
server: CMakeFiles/server.dir/common/blockingqueue.cpp.o
server: CMakeFiles/server.dir/common/broadcaster.cpp.o
server: CMakeFiles/server.dir/common/liberror.cpp.o
server: CMakeFiles/server.dir/common/resolver.cpp.o
server: CMakeFiles/server.dir/common/resolvererror.cpp.o
server: CMakeFiles/server.dir/common/socket.cpp.o
server: CMakeFiles/server.dir/common/wrap_socket.cpp.o
server: CMakeFiles/server.dir/server/aceptador.cpp.o
server: CMakeFiles/server.dir/server/beam.cpp.o
server: CMakeFiles/server.dir/server/game.cpp.o
server: CMakeFiles/server.dir/server/lobby.cpp.o
server: CMakeFiles/server.dir/server/main.cpp.o
server: CMakeFiles/server.dir/server/receiver_thread.cpp.o
server: CMakeFiles/server.dir/server/sender_thread.cpp.o
server: CMakeFiles/server.dir/server/server.cpp.o
server: CMakeFiles/server.dir/server/server_client.cpp.o
server: CMakeFiles/server.dir/server/server_protocol.cpp.o
server: CMakeFiles/server.dir/server/world.cpp.o
server: CMakeFiles/server.dir/build.make
server: CMakeFiles/server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/fede/Documentos/Taller/tp-worms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_23) "Linking CXX executable server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/server.dir/build: server
.PHONY : CMakeFiles/server.dir/build

CMakeFiles/server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/server.dir/clean

CMakeFiles/server.dir/depend:
	cd /home/fede/Documentos/Taller/tp-worms/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fede/Documentos/Taller/tp-worms /home/fede/Documentos/Taller/tp-worms /home/fede/Documentos/Taller/tp-worms/build /home/fede/Documentos/Taller/tp-worms/build /home/fede/Documentos/Taller/tp-worms/build/CMakeFiles/server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/server.dir/depend

