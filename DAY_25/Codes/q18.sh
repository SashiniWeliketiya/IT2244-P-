//18. Write a script to find the summation of the first 15 numbers (from 1 to 15).

sum=0

for ((i = 1; i <= 15; i++)); do
    sum=$((sum + i))
done

echo "The sum of the first 15 numbers (1 to 15) is: $sum"


Answer:-

[sashini@Sashini ~]$ vi q18.sh
[sashini@Sashini ~]$ chmod 777 q18.sh
[sashini@Sashini ~]$ ./q18.sh
The sum of the first 15 numbers (1 to 15) is: 120