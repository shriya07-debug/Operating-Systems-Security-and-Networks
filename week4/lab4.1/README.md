
# Lab 6 - Text and Initialized Data Segments

## Objective

To understand the `.text`, `.rodata`, and `.data` segments and inspect memory addresses using GDB.

## Compile and Run

```bash
gcc -g demo2.c -o demo2
gdb ./demo2
```

```gdb
break 22
run
```

## Commands Used

```gdb
info files
print &data_global_var
x/wx &data_global_var
print text_string_literal
x/s text_string_literal
print &text_string_literal
continue
quit
```

## Memory Segments

- `.text` - Stores program instructions and functions.
- `.rodata` - Stores read-only constants and string literals.
- `.data` - Stores initialized global and static variables.
- `.bss` - Stores uninitialized global and static variables.

## Memory Inspection

The initialized global variable is:

```c
int data_global_var = 0x12345678;
```

The command `x/wx &data_global_var` displays its value in hexadecimal.

Expected output:

```text
0xaaaaaaac0010 <data_global_var>: 0x12345678
```

The command `x/s text_string_literal` displays the string stored in read-only memory.

## Post-Lab Questions

### 1. Endianness

The system uses Little-Endian byte order. The value `0x12345678` is stored in memory as `78 56 34 12`, from the lowest to the highest address.

### 2. Text and Read-Only Data

The `.text` segment stores executable instructions, while `.rodata` stores read-only constants and strings. Separating them allows the operating system to apply appropriate memory permissions and manage code and data separately.

## Conclusion

This lab demonstrates how to inspect program instructions, initialized data, and read-only strings using GDB and understand memory layout and byte order.
