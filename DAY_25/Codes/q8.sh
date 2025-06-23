//8. Write a script to an electronic dice and its output by generating random numbers.


# Generate a random number between 1 and 6
dice_roll=$(( ( RANDOM % 6 ) + 1 ))

echo "You rolled a $dice_roll"


Answer:-
[sashini@Sashini ~]$ vi q8.sh
[sashini@Sashini ~]$ chmod 777 q8.sh
[sashini@Sashini ~]$ ./q8.sh
You rolled a 1