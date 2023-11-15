## Build Instructions
### With Docker
1. run `docker build -t YOUR_IMAGE_NAME:TAG .`

### Local environment (need CMake)
1. create and navigate to build directory (e.g. /build)
2. run `cmake ..`
3. run `make` or `cmake --build .` to build
4. run `make clean` to clean up build file

# Gray-Scott Model Simulation Unit Tests
## Running the Tests
Once the build process is complete, run the compiled test binary. This can typically be done with `./[Executable Name]`. Replace `[Executable Name]` with the name of your compiled test executable.
## Test Overview
- **Type Check (`CheckType`)**: Ensures model parameters' types match those in vectors `u` and `v`.
- **Size Consistency (`CheckSameSize`)**: Checks if vectors `u` and `v` are of the same size.
- **Zero Variable Test (`CheckTheVariableZero`)**: Validates simulation behavior when `u` and `v` are initialized to zero.
## Contributions
Feedback and contributions are welcome. Please submit issues or pull requests for any enhancements or bug fixes.
