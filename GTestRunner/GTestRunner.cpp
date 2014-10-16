#include <stdio.h>

#include "gtest/gtest.h"

TEST(GTestTest, Trival)
{
  bool expect(true);
  EXPECT_TRUE(expect);
}


int main(int argc, char** argv)
{
  printf("A testing program for environment.\n");

  testing::InitGoogleTest(&argc, argv);

  return RUN_ALL_TESTS();
}
