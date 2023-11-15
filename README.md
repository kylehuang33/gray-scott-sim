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