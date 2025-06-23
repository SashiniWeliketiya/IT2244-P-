//1. Write a shell script to display all executable files, directories and zero-sized files from the current directory.


echo "Executable files:"
for file in *; do
    [ -f "$file" ] && [ -x "$file" ] && echo "$file"
done

echo -e "\nDirectories:"
for file in *; do
    [ -d "$file" ] && echo "$file"
done

echo -e "\nZero-sized files:"
for file in *; do
    [ -f "$file" ] && [ ! -s "$file" ] && echo "$file"
done

Answer:-
[sashini@Sashini ~]$ vi q1.sh
[sashini@Sashini ~]$ chmod 777 q1.sh
[sashini@Sashini ~]$ ./q1.sh
Executable files:
Arithmetic
Example
Example1
Example10
Example2
Example3
Example4
Example7
Example8
Example9
Exercise
Fibonacci
Q1
Q2
Q3
Q4
Q5
datatypes
day14_1
day14_2
day14_3
day15_1
day15_2
day15_3
day15_4
day16_1
day17_1
day17_2
ex
ex01
ex1
factorial
first
fork
forth
ifelse
inputuser
multi_thread
pipe
pipeEx
pipex
pipex1
q1.sh
question3.sh
read
receive
receive65
second
send
send65
t_operator
third
thread
thread_ex1
thread_sum
variables
write

Directories:

Zero-sized files:
progfile65
progfile65.c
shmfile
variables.ci