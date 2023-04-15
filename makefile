BUILD_DIR := build
SRC_DIR := Test
COMPILER_PATH := /usr/local/Cellar/gcc/12.2.0

.PHONY: clean build_dir

CC := $(COMPILER_PATH)/bin/g++-12

CFLAGS := -Wall -Wextra -Wpedantic -std=c++2a -O0
CFLAGS += -I$(COMPILER_PATH)/include

EXE := $(BUILD_DIR)/source_loc
SRCS := $(SRC_DIR)/Main.cpp $(SRC_DIR)/Test.cpp
OBJS := $(addprefix $(BUILD_DIR)/, $(SRCS:%.cpp=%.o))

$(EXE) : $(OBJS)
	$(CC) $(CFLAGS) $^ -o $@

$(BUILD_DIR)/%.o : %.cpp
	$(CC) $(CFLAGS) -c $< -o $@

build_dir :
	mkdir -p $(BUILD_DIR)/Test

clean :
	rm -r $(BUILD_DIR)
