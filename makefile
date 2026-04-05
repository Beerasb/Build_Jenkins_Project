CC = gcc
CXX = g++
CFLAGS = -Wall -g
CXXFLAGS = -Wall -g
LIBS = -lgtest -lgtest_main -lpthread

TARGET = my_project
TEST_TARGET = run_tests

all: $(TARGET)

$(TARGET): main.o helper.o
	$(CC) $(CFLAGS) -o $(TARGET) main.o helper.o

# Rule to build and link the test executable
test: helper.o tests.cpp
	$(CXX) $(CXXFLAGS) tests.cpp helper.o $(LIBS) -o $(TEST_TARGET)
	./$(TEST_TARGET)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f *.o $(TARGET) $(TEST_TARGET)
