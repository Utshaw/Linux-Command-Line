#!/bin/bash

# redirect STDIN explicitly using 0 (FD 0 STDIN)
read X 0< /etc/passwd
echo "${X}"

# redirect STDOUT explicitly using 1 (FD 1 STDOUT)
echo "${UID}" 1> test_file.txt
cat test_file.txt


# redirect STDERR (append mode to error log) & redirect STDOUT
head -n1 /etc/passwd /etc/hosts /fakefile 2>> out.err 1> out.txt
cat out.err
cat out.txt


# redirect both STDERR and STDOUT to same file
head -n1 /etc/passwd /etc/hosts /fakefile &> out.both
cat out.both

# redirect STDERR to STDOUT for functioning pipe properly
head -n1 /etc/passwd /etc/hosts /fakefile 2>&1 | cat -n

