CC = gcc
CXX = g++
CFLAGS = -Wall -g
CXXFLAGS = -Wall -g
VCPKG_ROOT ?= vcpkg
GTEST_INCLUDE = -I$(VCPKG_ROOT)/installed/x64-mingw-dynamic/include
GTEST_LIB = -L$(VCPKG_ROOT)/installed/x64-mingw-dynamic/lib -lgtest -lgtest_main -lpthread

TARGET = my_project
TEST_TARGET = run_tests

all: $(TARGET)

$(TARGET): main.o helper.o
	$(CC) $(CFLAGS) -o $(TARGET) main.o helper.o

# Rule to build and link the test executable
test: helper.o tests.cpp
	$(CXX) $(CXXFLAGS) $(GTEST_INCLUDE) tests.cpp helper.o $(GTEST_LIB) -o $(TEST_TARGET)
	./$(TEST_TARGET)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f *.o $(TARGET) $(TEST_TARGET)
