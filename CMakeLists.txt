cmake_minimum_required(VERSION 3.9)
project(algoritmiek)

set(CMAKE_CXX_STANDARD 11)

add_executable(search search.cpp)
add_executable(bubbleSort bubbleSort.cpp)
add_executable(quickSort quickSort.cpp)
add_executable(testing testing.cpp)