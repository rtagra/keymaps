# RISC-V Assembly Hello World

A simple "Hello, World!" program written in RISC-V assembly language.

## Files

- `hello_world.s` - RISC-V assembly source code
- `Makefile` - Build configuration for assembling and linking

## Requirements

To build and run this program, you need:

- RISC-V GNU toolchain (`riscv64-linux-gnu-as`, `riscv64-linux-gnu-ld`)
- QEMU user mode emulator for RISC-V (`qemu-riscv64`) - optional, for testing

### Installing Dependencies

On Ubuntu/Debian:
```bash
sudo apt-get install gcc-riscv64-linux-gnu binutils-riscv64-linux-gnu qemu-user
```

On macOS (using Homebrew):
```bash
brew tap riscv/riscv
brew install riscv-tools qemu
```

## Building

To assemble and link the program:

```bash
make
```

This will create:
- `hello_world.o` - Object file
- `hello_world` - Executable binary

## Running

### Using QEMU (recommended for testing)

```bash
make run
```

Or directly:
```bash
qemu-riscv64 ./hello_world
```

### On RISC-V Hardware

Transfer the `hello_world` binary to your RISC-V system and run:
```bash
./hello_world
```

## Expected Output

```
Hello, World!
```

## How It Works

The program uses RISC-V Linux system calls:

1. **Write syscall (64)**: Outputs the "Hello, World!" string to stdout
   - `a7` = 64 (write syscall number)
   - `a0` = 1 (file descriptor for stdout)
   - `a1` = address of the message string
   - `a2` = 14 (length of the message)

2. **Exit syscall (93)**: Exits the program with code 0
   - `a7` = 93 (exit syscall number)
   - `a0` = 0 (exit code)

## Cleaning Up

To remove build artifacts:

```bash
make clean
```

## Technical Details

- **Architecture**: RV64G (64-bit RISC-V with general extensions)
- **ABI**: RISC-V Linux syscall convention
- **Assembler**: GNU assembler for RISC-V
- **Linker**: Statically linked executable

## License

This code is provided as-is for educational purposes.
