# Lab 1: Linux Files, APT, and C Programming

## Objective

This lab introduces basic Linux commands, package management using APT, and the process of writing, compiling, and running a C program.

## Topics Covered

* Linux file and directory operations
* Creating and editing files
* Copying, moving, and deleting files
* Checking file permissions
* Installing packages using APT
* Installing and checking GCC
* Writing and compiling a C program
* Running and modifying a C program

## File Operations

The following Linux commands were practiced:

```bash
ls
mkdir
cd
touch
nano
cat
cp
mv
rm
rmdir
```

A lab directory was created and a text file was created, edited, copied, renamed, and removed.

## APT Package Management

The APT package manager was used to update the package list and install the tools needed for C programming.

```bash
sudo apt update
sudo apt install build-essential
gcc --version
```

## C Programming

A simple C program was created using `nano` and saved as `hello.c`.

The program prints a message and calculates the sum of two numbers.

### Compile the Program

```bash
gcc hello.c -o hello_program
```

### Run the Program

```bash
./hello_program
```

The program was also compiled with warnings enabled:

```bash
gcc -Wall hello.c -o hello_program_warn
```

## Modifying the Program

The C program was edited to change the values of the numbers. It was then compiled and run again to observe the changed output.

## Key Learning

* Linux provides commands to manage files and directories.
* APT is used to install and manage software packages.
* GCC converts C source code into a program that can be run.
* C programs need to be compiled before they can be executed.

## Conclusion

This lab provided basic hands-on experience with Linux commands, APT package management, and C programming. It helped us understand how to create files, install required tools, compile C code, and run programs from the Linux terminal.
