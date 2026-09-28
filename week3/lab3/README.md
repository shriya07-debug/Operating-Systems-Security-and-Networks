# Lab 3: Investigating Process Lifecycles and OS Interaction

## Objective

This lab focuses on understanding how the operating system manages processes. The programs demonstrate process execution, process IDs, exit codes, input/output, and conditional program termination.

## Files

* `task1_alive.c` – Creates a process that runs for 30 seconds.
* `task1` – Executable file for Task 1.
* `task2_identity.c` – Displays the Process ID (PID) and Parent Process ID (PPID).
* `task2` – Executable file for Task 2.
* `task3_exit.c` – Uses user input to show success or failure.
* `task3` – Executable file for Task 3.
* `task4_input.c` – Takes the user's name as input and displays it.
* `task4` – Executable file for Task 4.
* `task5_control.c` – Uses user input to continue or stop the program.
* `task5` – Executable file for Task 5.

## Tasks

### Task 1: Long-Running Process

This program runs for 30 seconds using `sleep()`. It can be run in the background and checked using Linux commands such as `ps`.

```bash
gcc task1_alive.c -o task1
./task1 &
ps aux | grep task1
```

### Task 2: Process Identity

This program displays its own Process ID (PID) and its Parent Process ID (PPID).

```bash
gcc task2_identity.c -o task2
./task2 &
ps -p <PID> -o pid,ppid,cmd
```

### Task 3: Exit Codes

This program takes a number from the user. A positive number returns `0` for success, while a negative number returns `1`.

```bash
gcc task3_exit.c -o task3
./task3
echo $?
```

### Task 4: Standard Input and Output

This program takes the user's name using `scanf()` and displays a greeting using `printf()`.

```bash
gcc task4_input.c -o task4
./task4
```

### Task 5: Conditional Execution

This program asks the user whether they want to continue. Entering `1` continues the program and returns `0`, while entering `0` exits and returns `1`.

```bash
gcc task5_control.c -o task5
./task5
echo $?
```

## Key Learning

* A running C program is managed by the operating system as a process.
* Every process has a PID and a parent process.
* `sleep()` can pause a process for a specific amount of time.
* Return values tell the operating system whether a program completed successfully.
* `scanf()` receives input and `printf()` displays output.

## Conclusion

This lab helped us understand how C programs interact with the Linux operating system. We learned how processes are created, identified, monitored, and controlled using basic C functions and Linux commands.
