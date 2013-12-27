# Standard setup
cmake_minimum_required (VERSION 2.8)
project (hello-lib CXX C)

# Includes
include_directories (${hello-lib_SOURCE_DIR})

# Source files
set (SRC
	HelloWorld.cpp
	HelloIOS.mm
)

# Headers
set (HDR
	HelloWorld.h
	HelloIOS.h
)

set (CMAKE_CXX_FLAGS "-fobjc-abi-version=2 -fobjc-arc ${CMAKE_CXX_FLAGS}")

# Library
add_library (hello-lib STATIC ${SRC} ${HDR})
set_xcode_property (hello-lib GCC_GENERATE_DEBUGGING_SYMBOLS YES)

# Installation
set (CMAKE_INSTALL_PREFIX "${hello-lib_SOURCE_DIR}/../hello-app")
install (TARGETS hello-lib DESTINATION .)
install (FILES HelloIOS.h DESTINATION .)
