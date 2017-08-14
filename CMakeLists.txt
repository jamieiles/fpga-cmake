cmake_minimum_required(VERSION 2.8)
project(sample)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/CMake/")

find_package(Quartus REQUIRED)

add_subdirectory(fpga)
