# Makefile for RISC-V Assembly Hello World

# Compiler and tools
AS = riscv64-linux-gnu-as
LD = riscv64-linux-gnu-ld
QEMU = qemu-riscv64

# Flags
ASFLAGS = -march=rv64g
LDFLAGS = -static

# Targets
TARGET = hello_world
SRC = hello_world.s
OBJ = hello_world.o

# Default target
all: $(TARGET)

# Build the executable
$(TARGET): $(OBJ)
	$(LD) $(LDFLAGS) -o $(TARGET) $(OBJ)

# Assemble the source file
$(OBJ): $(SRC)
	$(AS) $(ASFLAGS) -o $(OBJ) $(SRC)

# Run the program with QEMU
run: $(TARGET)
	$(QEMU) ./$(TARGET)

# Clean build artifacts
clean:
	rm -f $(OBJ) $(TARGET)

.PHONY: all run clean
