#include <gtest/gtest.h>
#include "gs.h"



// (0.1) Check that the type of the model parameters (F , k) matches that of the element type of the u and v vectors.
TEST(GrayScottSim, CheckType)
{
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
    return RUN_ALL_TESTS();
}