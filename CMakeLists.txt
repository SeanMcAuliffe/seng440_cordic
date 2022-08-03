cmake_minimum_required(VERSION 2.8)

project(cordic C)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=c99 -lm")

add_executable(performance_test performance_test.c)