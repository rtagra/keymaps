# RISC-V Assembly - Hello World
# Prints "Hello, World!" to stdout and exits

.section .data
hello_msg:
    .string "Hello, World!\n"
    msg_len = . - hello_msg

.section .text
.globl _start

_start:
    # Write syscall
    # a7 = syscall number (64 = write for RISC-V Linux)
    # a0 = file descriptor (1 = stdout)
    # a1 = buffer address
    # a2 = number of bytes to write
    li a7, 64           # syscall number for write
    li a0, 1            # file descriptor 1 = stdout
    la a1, hello_msg    # load address of hello message
    li a2, 14           # length of message (including newline)
    ecall               # make system call

    # Exit syscall
    # a7 = syscall number (93 = exit for RISC-V Linux)
    # a0 = exit code
    li a7, 93           # syscall number for exit
    li a0, 0            # exit code 0
    ecall               # make system call
