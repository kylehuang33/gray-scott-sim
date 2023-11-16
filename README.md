## Build and Run Instructions

### With Docker
1. execute `docker build -t YOUR_IMAGE_NAME:TAG .` to build
(e.g. docker build -t gray-scott-sim:latest .)
2. execute `docker run -it YOUR_IMAGE_NAME:TAG YOUR_COMMAND`
(e.g. docker run -it gray-scott-sim:latest /bin/bash)

### Local environment (need CMake)
1. create and navigate to build directory (e.g. /build)
2. execute `cmake ..` to generate build script
3. execute `make` or `cmake --build .` to build or rebuild
4. execute `make clean` to clean up build files
5. execute `./gstesting` to run tests
6. execute `./GrayScottSim` to run simulation program

## Testing 
### Intro
The three test in this project are tested under Google Framework. The code seems well-structured for testing specific aspects of a Gray-Scott model simulation
- (0.1) Check that the type of the model parameters (F , k) matches that of the element type of the u and v vectors.
    - checks whether the types of the model parameters F and k match the element type of the u and v vectors, respectively. This is important for **ensuring data type consistency** in the model.
- (0.2) Check that the variables u and v are the same size. 
    - checks that the u and v vectors are of the same size. This is important to make sure representing **chemical concentrations** in the model
- (0.3) Check that the simulation produces the mathematically correct answer when u = 0 and v = 0.
    - initializes u and v to zero and sets F and k to zero. 
    - It then runs the simulation for a specified number of iterations and checks that u and v remain at or near zero. 
    - This test appears to validate **the model's stability or correctness** under a zeroed initial condition.

GoogleTest frameworks: https://github.com/google/googletest
- In CMakeList.txt, There is some code implemented with a small piece that downloads and pulls the GoogleTest code into the main build


### Instructions
#### In Docker
1. `docker run -it YOUR_IMAGE_NAME bash`
2. in docker bash `./gstesting`
