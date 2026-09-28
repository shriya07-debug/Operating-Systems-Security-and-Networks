# Lab 4: C Programming Basics and Memory

## Objective

This lab helps us understand basic C programming, data types, and how memory is used by a program.

## Programs

### 1. datatype.c

This program uses `sizeof()` to find how much memory different data types use.

It checks:

* char
* int
* float
* double
* long
* unsigned int
* long long

### 2. address.c

This program shows where different variables are stored in memory.

It includes:

* Global initialized variable → Data
* Global uninitialized variable → BSS
* Local variable → Stack
* Dynamically allocated variable → Heap

The program prints the address of each variable.

### 3. pointer.c

This program creates a space in memory using `malloc()` and stores the value `30` in it.

It shows that the pointer and the actual value are stored in different places in memory.

## Compilation

The programs can be compiled using GCC:

```bash
gcc datatype.c -o datatype
gcc address.c -o address
gcc pointer.c -o pointer
```

## Running the Programs

```bash
./datatype
./address
./pointer
```

## Key Learning

* Different data types use different amounts of memory.
* Variables can be stored in different areas of memory.
* The Stack stores temporary data.
* The Heap stores memory created during program execution.
* The OS manages the memory used by each program.

## Conclusion

This lab helped us understand how C programs use memory. It also helped us understand how different variables and data are stored and managed by the operating system.
