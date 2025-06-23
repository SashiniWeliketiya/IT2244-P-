//11. Write a shell script to display the multiplication table of a given number

# Read the number
read -p "Enter a number to display its multiplication table: " num

# Display the table
echo "Multiplication Table of $num:"
for i in {1..10}
do
    result=$((num * i))
    echo "$num x $i = $result"
done

Answer:-

[sashini@Sashini ~]$ vi q11.sh
[sashini@Sashini ~]$ chmod 777 q11.sh
[sashini@Sashini ~]$ ./q11.sh
Enter a number to display its multiplication table: 7
Multiplication Table of 7:
7 x 1 = 7
7 x 2 = 14
7 x 3 = 21
7 x 4 = 28
7 x 5 = 35
7 x 6 = 42
7 x 7 = 49
7 x 8 = 56
7 x 9 = 63
7 x 10 = 70