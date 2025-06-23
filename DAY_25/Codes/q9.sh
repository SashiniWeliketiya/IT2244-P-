//9. Write a shell script to read n numbers as command arguments and sort them in descending order.


# Check if at least one number is passed
if [ $# -eq 0 ]; then
    echo "Usage: $0 num1 num2 ... numN"
    exit 1
fi

# Sort the numbers in descending order
echo "Sorted numbers in descending order:"
for num in "$@"; do
    echo $num
done | sort -nr





Answer:-
[sashini@Sashini ~]$ vi q9.sh
[sashini@Sashini ~]$ chmod 777 q9.sh
[sashini@Sashini ~]$ ./q9.sh 8 9 86 5 2 46 12
Sorted numbers in descending order:
86
46
12
9
8
5
2