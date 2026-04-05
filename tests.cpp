#include <gtest/gtest.h>
#include <iostream>

// Use extern "C" so the C++ compiler can link to your C functions
extern "C" {
    #include "helper.h"
}

TEST(MathTest, Addition) {
    std::cout << "Running Addition tests..." << std::endl;
    EXPECT_EQ(add(2, 3), 5);
    EXPECT_EQ(add(-1, 1), 0);
    std::cout << "Addition tests passed!" << std::endl;
}

TEST(MathTest, Multiplication) {
    std::cout << "Running Multiplication tests..." << std::endl;
    EXPECT_EQ(multiply(4, 5), 20);
    EXPECT_EQ(multiply(0, 10), 0);
    std::cout << "Multiplication tests passed!" << std::endl;
}

int main(int argc, char **argv) {
    std::cout << "========================================" << std::endl;
    std::cout << "Build successful! Starting tests..." << std::endl;
    std::cout << "========================================" << std::endl;
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
