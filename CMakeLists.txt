cmake_minimum_required(VERSION 3.13)
project(Threading101)

set(CMAKE_CXX_STANDARD 17)

add_executable(Threading101 main.cpp)

find_program(CMAKE_CXX_CPPCHECK NAMES cppcheck)
if (CMAKE_CXX_CPPCHECK)
    message( "CPPCHECK FOUND" )
    list(
        APPEND CMAKE_CXX_CPPCHECK 
            "--enable=warning"
            "--inconclusive"
            "--force" 
            "--inline-suppr"
            "--suppressions-list=${CMAKE_SOURCE_DIR}/CppCheckSuppressions.txt"
    )
endif()