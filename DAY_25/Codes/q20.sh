//20. Write a script to find out the biggest integer between three integers read from the user.


# Read three integers from the user
read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c

# Compare the numbers to find the largest
if [ "$a" -ge "$b" ] && [ "$a" -ge "$c" ]; then
    echo "The biggest number is: $a"
elif [ "$b" -ge "$a" ] && [ "$b" -ge "$c" ]; then
    echo "The biggest number is: $b"
else
    echo "The biggest number is: $c"
fi


Answer:-
[sashini@Sashini ~]$ vi q20.sh
[sashini@Sashini ~]$ chmod 777 q20.sh
[sashini@Sashini ~]$ ./q20.sh
Enter first number: 5
Enter second number: 6
Enter third number: 8
The biggest number is: 8