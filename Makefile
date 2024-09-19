# Define cross-compiler variables
CXX = aarch64-linux-gnu-g++
CXXFLAGS = -Wall -O2 -march=armv8-a+crc+simd
TARGET = smartHomeServer

# Default target
all: $(TARGET)

# Rule to link the object files and generate the executable
$(TARGET): $(TARGET).o
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(TARGET).o

# Rule to compile the source code into object files
$(TARGET).o: $(TARGET)
	$(CXX) $(CXXFLAGS) -c $(TARGET).cpp

# Clean up object files and the executable
clean:
	rm -f $(TARGET) $(TARGET).o