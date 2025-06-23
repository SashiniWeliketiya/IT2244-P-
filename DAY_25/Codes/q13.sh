//13. Write a shell script which will accept a number and display the first n prime numbers as output.


# Function to check if a number is prime
is_prime() {
    num=$1
    if [ "$num" -le 1 ]; then
        return 1
    fi
    for ((i = 2; i*i <= num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            return 1
        fi
    done
    return 0
}

# Read input
read -p "Enter how many prime numbers to display: " n

count=0
num=2

echo "First $n prime numbers are:"
while [ $count -lt $n ]; do
    if is_prime "$num"; then
        echo -n "$num "
        ((count++))
    fi
    ((num++))
done

echo    # move to next line


Answer:-
[sashini@Sashini ~]$ vi q13.sh
[sashini@Sashini ~]$ chmod 777 q13.sh
[sashini@Sashini ~]$ ./q13.sh
Enter how many prime numbers to display: 5
First 5 prime numbers are:
2 3 5 7 11