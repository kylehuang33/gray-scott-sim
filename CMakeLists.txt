cmake_minimum_required(VERSION 3.6) 
project(GrayScottSim VERSION 1.0)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_executable(GrayScottSim gs.cpp)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -static-libstdc++")

target_compile_features(GrayScottSim PUBLIC cxx_std_11)



# Google Test
include(FetchContent)
FetchContent_Declare(
  googletest
  # Specify the commit you depend on and update it regularly.
  URL https://github.com/google/googletest/archive/5376968f6948923e2411081fd9372e71a59d8e77.zip
)

FetchContent_GetProperties(googletest)
if(NOT googletest_POPULATED)
    FetchContent_Populate(googletest)
    add_subdirectory(${googletest_SOURCE_DIR} ${googletest_BINARY_DIR})
endif()

# Now simply link against gtest or gtest_main as needed. Eg
add_executable(Gray-Scott-Sim gs.cpp)
add_executable(Gray-Scott-Test tests/gt_gs.cpp)

target_link_libraries(Gray-Scott-Test gtest_main)

# add_test(NAME example_test COMMAND example)

include(GoogleTest)

