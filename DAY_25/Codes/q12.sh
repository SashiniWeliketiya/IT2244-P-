//12. Write a shell script to find the factorial of a given number n.


# Read a number from the user
read -p "Enter a number to find its factorial: " n

# Check for valid input (non-negative integer)
if [ $n -lt 0 ]; then
    echo "Factorial is not defined for negative numbers."
    exit 1
fi

# Initialize factorial result
fact=1

# Calculate factorial using loop
for (( i=1; i<=n; i++ ))
do
    fact=$((fact * i))
done

# Display result
echo "Factorial of $n is: $fact"


Answer:-
[sashini@Sashini ~]$ vi q12.sh
[sashini@Sashini ~]$ chmod 777 q12.sh
[sashini@Sashini ~]$ ./q12.sh
Enter a number to find its factorial: 6
Factorial of 6 is: 720