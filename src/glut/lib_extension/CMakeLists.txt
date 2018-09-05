cmake_minimum_required(VERSION 3.10)
project(extension C)

set(CMAKE_C_STANDARD 99)

add_library(extension extension.c extension.h)

find_package(GLUT REQUIRED)
include_directories( ${GLUT_INCLUDE_DIRS} )
target_link_libraries(extension ${GLUT_LIBRARY} )
