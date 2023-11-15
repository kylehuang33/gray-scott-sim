## Build Instructions
### With Docker
1. run `docker build -t YOUR_IMAGE_NAME:TAG .`

### Local environment (need CMake)
1. create and navigate to build directory (e.g. /build)
2. run `cmake ..`
3. run `make` or `cmake --build .` to build
4. run `make clean` to clean up build file


## Testing 
### Intro
The three test in this project are tested under Google Framework
- (0.1) Check that the type of the model parameters (F , k) matches that of the element type of the u and v vectors.
- (0.2) Check that the variables u and v are the same size. 
- (0.3) Check that the simulation produces the mathematically correct answer when u = 0 and v = 0.

GoogleTest frameworks: https://github.com/google/googletest
- In CMakeList.txt, There is some code implemented with a small piece that downloads and pulls the GoogleTest code into the main build


### Instructions
#### In Docker
1. `docker run -it YOUR_IMAGE_NAME bash`
2. in docker bash `./gstesting`