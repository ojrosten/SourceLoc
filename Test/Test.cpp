#include "Test.hpp"
#include <source_location>

std::string test_1()
{
  return std::source_location::current().file_name();
}
