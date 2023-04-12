#include "Test.hpp"

#include <iostream>
#include <source_location>

int main()
{
  std::cout << std::source_location::current().file_name() << '\n';
  std::cout << test_1() << '\n';
}
