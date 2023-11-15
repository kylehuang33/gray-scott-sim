#include <gtest/gtest.h>
#include "gs.h"

// Define simulation parameters
// const int width = 256;                // Width of the grid
// const int height = 256;               // Height of the grid
// double Du = 0.14;                     // Diffusion rate of U
// double Dv = 0.07;                     // Diffusion rate of V
// double F = 0.03;                      // Feed rate
// double k = 0.0648;                    // Kill rate
// double threshold = 0.1;
// const double dt = 0.06;               // Time step
// const int numIterations = 10000;
// const int outputInterval =  100;      // Output every 1000 iterations

// std::vector<std::vector<double>> u(width, std::vector<double>(height, 1.0));
// std::vector<std::vector<double>> v(width, std::vector<double>(height, 0.0));

// (0.1) Check that the type of the model parameters (F , k) matches that of the element type of the u and v vectors.
TEST(GrayScottSim, CheckType)
{
    init();
    EXPECT_EQ(typeid(F), typeid(u[0][0])) << "F doesn't match the element type of the u";
    EXPECT_EQ(typeid(k), typeid(v[0][0])) << "k doesn't match the element type of the v";
}


// (0.2) Check that the variables u and v are the same size. 
TEST(GrayScottSim, CheckSameSize)
{
    EXPECT_EQ(u.size(), v.size()) << "Vector u and v are unequal of the length";

    for(size_t i=0; i < u.size(); ++i)
    {
        EXPECT_EQ(u[i].size(), v[i].size()) << "Vectors u and v differ at index " << i;
    }
}



// (0.3) Check that the simulation produces the mathematically correct answer when u = 0 and v = 0.
TEST(GrayScottSim, CheckTheVariableZero)
{
    // Initialize u and v to zero
    for (auto &row : u) std::fill(row.begin(), row.end(), 0.0);
    for (auto &row : v) std::fill(row.begin(), row.end(), 0.0);

    simulateStep();

    for(size_t i = 0; i < u.size(); ++i)
        for(size_t j = 0; j < u[0].size(); ++j)
            ASSERT_EQ(u[i][j], 0.0);

    for(size_t i = 0; i < v.size(); ++i)
        for(size_t j = 0; j < v[0].size(); ++j)
            ASSERT_EQ(v[i][j], 0.0);


}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);

    if (argc != 5){
        std::cout << "Usage: " << argv[0] << " <Du> <Dv> <F> <k> <threshold>" << std::endl;
    }
    else{
      Du = std::stod(argv[1]);
      Dv = std::stod(argv[2]);
      F = std::stod(argv[3]);
      k = std::stod(argv[4]);
      threshold = std::stod(argv[5]);
    }
       
    init();
    std::cout << "Simulation initiated." << std::endl;

    // Main simulation loop
    for (int iteration = 0; iteration < numIterations; ++iteration) {
        simulateStep();
        
        // Periodically write to VTK file
        if (iteration % outputInterval == 0) {
            writeVTKFile(iteration);
        }
    }

    // count the amount of pixels above threshold at end.
    double n = countElementsAboveThreshold(threshold);
    std::cout << "Simulation completed: P(v > threshold) = " << n << std::endl;

    return RUN_ALL_TESTS();
}