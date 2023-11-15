cmake_minimum_required(VERSION 3.6) 
project(GrayScottSim VERSION 1.0)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_library(calculations gs.cpp gs.h)
add_executable(GrayScottSim main.cpp)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -static-libstdc++")

target_compile_features(GrayScottSim PUBLIC cxx_std_11)

# Google Test
include(FetchContent)
FetchContent_Declare(
  googletest
  # Specify the commit you depend on and update it regularly.
  URL https://github.com/google/googletest/archive/5376968f6948923e2411081fd9372e71a59d8e77.zip
)
FetchContent_MakeAvailable(googletest)

FetchContent_GetProperties(googletest)
if(NOT googletest_POPULATED)
    FetchContent_Populate(googletest)
    add_subdirectory(${googletest_SOURCE_DIR} ${googletest_BINARY_DIR})
endif()

# Now simply link against gtest or gtest_main as needed. Eg
include(GoogleTest)
enable_testing()

add_executable(gstesting gt_gs.cpp)
target_link_libraries(gstesting GTest::gtest_main)
target_link_libraries(gstesting calculations)
target_link_libraries(GrayScottSim calculations)
