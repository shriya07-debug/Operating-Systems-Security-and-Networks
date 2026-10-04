# Lab 2: C Libraries, Linking, and ELF Executable Structure

## Objective

This lab focuses on understanding how C programs use the C Standard Library and how Linux executables are built and loaded. The tasks cover library locations, static and dynamic linking, and inspecting ELF files with `readelf` and `ldd`.

## Files

* `procinfo.c` – Displays the Process ID (PID), Parent Process ID (PPID), and current time.
* `procinfo_dynamic` – Dynamically linked executable.
* `procinfo_static` – Statically linked executable.
* `procinfo` - Executable file 
* `procinfo` - Object file

## Tasks

### Task 1: A Practical C Program

This program uses library functions such as `getpid()`, `getppid()`, `time()`, `localtime()`, and `printf()` to display process information.

```bash
gcc procinfo.c -o procinfo
./procinfo
```

### Task 2: Locating Headers and Libraries

Header files (`.h`) contain function declarations and are stored in `/usr/include/`. The compiled library code is stored as static (`.a`) or shared (`.so`) files in `/lib/` and `/usr/lib/`.

```bash
ls /usr/include/stdio.h /usr/include/unistd.h
ls /lib/x86_64-linux-gnu/libc.so*
ls /usr/lib/x86_64-linux-gnu/libc.a
```

### Task 3: Static vs. Dynamic Linking

Static linking copies library code into the executable, while dynamic linking loads shared libraries at runtime.

```bash
gcc -static procinfo.c -o procinfo_static
gcc procinfo.c -o procinfo_dynamic
ls -lh procinfo_static procinfo_dynamic
```

### Task 4: Inspecting ELF Files with readelf

`readelf` reads the internal structure of an ELF executable without running it.

```bash
readelf -h procinfo_dynamic    # ELF header
readelf -l procinfo_dynamic    # Program headers
readelf -d procinfo_dynamic    # Dynamic section
```

### Task 5: Tracing Dependencies with ldd

`ldd` shows which shared libraries an executable needs and where they are located.

```bash
ldd procinfo_dynamic
ldd procinfo_static
```

## Key Learning

* Header files only declare functions; the actual machine code is stored in libraries.
* Static libraries (`.a`) are copied into the executable, while shared libraries (`.so`) are loaded at runtime.
* Static binaries are larger but self-contained; dynamic binaries are smaller but need the `.so` files to run.
* The ELF header shows the file type and CPU architecture, the program headers show how memory is mapped, and the dynamic section lists required libraries.
* `ldd` reports "not a dynamic executable" for statically linked programs.

## Conclusion

This lab helped us understand how C programs link to the C Standard Library and how Linux loads executables. We learned to compare static and dynamic linking and to inspect ELF files using `readelf` and `ldd`.
