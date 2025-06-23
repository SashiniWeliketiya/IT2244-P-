//19. Write a script to find the Maximum number in a given set of 10 integers.


echo "Enter 10 integers:"

# Read the first number and assume it is the maximum
read -p "Number 1: " max

# Loop to read remaining 9 numbers and compare with current max
for ((i = 2; i <= 10; i++)); do
    read -p "Number $i: " num
    if [ "$num" -gt "$max" ]; then
        max=$num
    fi
done

echo "The maximum number is: $max"

Answer:-
[sashini@Sashini ~]$ vi q19.sh
[sashini@Sashini ~]$ chmod 777 q19.sh
[sashini@Sashini ~]$ ./q19.sh
Enter 10 integers:
Number 1: 5
Number 2: 4
Number 3: 6
Number 4: 3
Number 5: 2
Number 6: 1
Number 7: 7
Number 8: 8
Number 9: 9
Number 10: 11
The maximum number is: 11


