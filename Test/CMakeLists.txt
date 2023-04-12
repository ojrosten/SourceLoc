project(SourceLoc)

cmake_minimum_required(VERSION 3.20)

add_executable(source_loc Main.cpp Test.cpp)

target_compile_features(source_loc PUBLIC cxx_std_23)
