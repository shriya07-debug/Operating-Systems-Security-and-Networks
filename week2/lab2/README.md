# Lab 2: C Programming Basics

## Objective

This lab focuses on basic C programming, the GCC compilation process, and understanding how a C program is converted into an executable program.

## Files

* `task1.c` – C source program
* `task1.i` – Preprocessed file
* `task1.s` – Assembly code
* `task1.o` – Object file
* `task1` – Final executable program
* `task2.c` – C program for checking return values
* `task3.c` – C program for user input

## GCC Compilation Stages

The C program was processed through four stages:

### 1. Preprocessing

```bash
gcc -E task1.c -o task1.i
```

Creates the `task1.i` preprocessed file.

### 2. Compilation

```bash
gcc -S task1.i -o task1.s
```

Creates the `task1.s` assembly file.

### 3. Assembly

```bash
gcc -c task1.s -o task1.o
```

Creates the `task1.o` object file.

### 4. Linking

```bash
gcc task1.o -o task1
```

Creates the final executable `task1`.

## Return Values

The programs were used to understand how a C program gives a return value to the operating system.

The exit status can be checked using:

```bash
echo $?
```

A return value of `0` normally means the program completed successfully, while a non-zero value indicates a different status.

## Tasks Completed

1. Created and compiled a basic C program.
2. Checked program exit status using `echo $?`.
3. Tested different return values.
4. Performed the four stages of GCC compilation.
5. Created a program that accepts user input.

## Key Learning

This lab helped us understand the basic structure of a C program and how GCC changes C code into a runnable program. We also learned how return values can be used to communicate the result of a program to the operating system.
