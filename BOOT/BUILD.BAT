::NASM BOOT.ASM -o %BIN%\DOSBOOT.COM

:: NASM ENTERPM.ASM -f ELF -o ENTERPM.o

NASM BOOT.ASM -w+gnu-elf-extensions -felf -o BOOT.o
i686-elf-gcc -c entry.c -ffreestanding -o entry.o
i686-elf-ld -Ttext=0x100 boot.o entry.o
i686-elf-objcopy -O binary a.out %BIN%\DOSBOOT.COM