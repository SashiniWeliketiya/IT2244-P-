//14. Write a shell script which will generate the first n Fibonacci numbers like 1, 1, 2, 3, 5, 13, …


# Read input from user
read -p "Enter how many Fibonacci numbers to generate: " n

# First two Fibonacci numbers
a=1
b=1

echo "First $n Fibonacci numbers are:"

# Loop to print Fibonacci numbers
for ((i = 1; i <= n; i++)); do
    echo -n "$a "
    fn=$((a + b))
    a=$b
    b=$fn
done

echo    # move to next line


Answer:-

[sashini@Sashini ~]$ vi q14.sh
[sashini@Sashini ~]$ chmod 777 q14.sh
[sashini@Sashini ~]$ ./q14.sh
Enter how many Fibonacci numbers to generate: 6
First 6 Fibonacci numbers are:
1 1 2 3 5 8