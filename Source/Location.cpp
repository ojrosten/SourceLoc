#include "Location.hpp"

std::string to_file(std::source_location loc)
{
  return loc.file_name();
}
