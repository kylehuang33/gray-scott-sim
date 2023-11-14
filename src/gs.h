#ifndef SIMULATION_H
#define SIMULATION_H

#include <vector>

// Define simulation parameters
const int width = 256;
const int height = 256;
const double dt = 0.06;
const int numIterations = 10000;
const int outputInterval = 100;

extern double Du;
extern double Dv;
extern double F;
extern double k;
extern double threshold;

// Define grid and constants
extern std::vector<std::vector<double>> u;
extern std::vector<std::vector<double>> v;

// Function declarations
void init();
void writeVTKFile(int iteration);
void simulateStep();
double countElementsAboveThreshold(double threshold);

#endif // SIMULATION_H
