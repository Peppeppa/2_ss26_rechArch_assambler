#/bin/bash
rm hello
rm hello.o
nasm -f elf -g  hello.asm

gcc -m32 -no-pie -z noexecstack hello.o -o hello
./hello
