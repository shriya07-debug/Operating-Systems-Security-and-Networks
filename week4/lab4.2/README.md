# Lab 4.2 - Process Runtime Memory Mapping

## Objective

To understand the memory layout of a running C program and identify the addresses of:

- `.bss`
- Heap
- Stack

using GDB.

## Files

- `demo.c` - C source code
- `demo` - compiled executable

## Compile

gcc -g demo.c -o demo


## Run with GDB

gdb ./demo


Set breakpoint:

gdb break 23
gdb run


## Commands Used

### Check program sections

gdb info files
readelf -l demo


### Check BSS address

gdb print &bss_global_var


### Check heap and stack mappings

gdb info proc mappings


### Check stack variable

gdb print stack_local_var
gdb print &stack_local_var


### Examine stack memory

gdb x/4wx $sp

### Check heap

gdb print heap_ptr
gdb x/1wd heap_ptr


`x/1wd` means:

- `x` = examine memory
- `1` = examine 1 unit
- `w` = word (4 bytes)
- `d` = decimal

The value stored in the heap should be:

```text
99
```

## Memory Regions

| Region | Variable |
|---|---|
| `.bss` | `bss_global_var` |
| Stack | `stack_local_var` |
| Heap | `heap_ptr` |

## Post-Lab Questions

### 1. Heap and Stack

The heap generally grows upward and the stack grows downward, so they can move toward each other as they expand.

### 2. Two Separate Programs

Two separate processes normally have different virtual address spaces. Therefore, their addresses may be different.

ASLR can also randomize memory addresses between executions.

## End

gdb continue
gdb quit
