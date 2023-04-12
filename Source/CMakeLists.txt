cmake_minimum_required(VERSION 3.20)

set(SourceList Location.cpp)

add_library(LocationLib STATIC ${SourceList})

target_include_directories(LocationLib PUBLIC .)
target_compile_features(LocationLib PUBLIC cxx_std_23)
