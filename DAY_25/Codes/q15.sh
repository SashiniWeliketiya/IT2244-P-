//15. Write a script to find whether the given number is odd or even.


# Read input from user
read -p "Enter a number: " num

# Check if the number is even or odd using modulus operator
if [ $((num % 2)) -eq 0 ]; then
    echo "$num is Even"
else
    echo "$num is Odd"
fi


Answer:-
[sashini@Sashini ~]$ vi q15.sh
[sashini@Sashini ~]$ chmod 777 q15.sh
[sashini@Sashini ~]$ ./q15.sh
Enter a number: 8
8 is Even
[sashini@Sashini ~]$ chmod 777 q15.sh
[sashini@Sashini ~]$ ./q15.sh
Enter a number: 5
5 is Odd