#pragma once

#include <source_location>
#include <string>

std::string to_file(std::source_location loc = std::source_location::current());
