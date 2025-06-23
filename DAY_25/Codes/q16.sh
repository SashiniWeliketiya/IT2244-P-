//16. Write a script to find whether the given year is a leap year or not.


# Read input year from user
read -p "Enter a year: " year

# Check leap year conditions
if (( (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0) )); then
    echo "$year is a Leap Year"
else
    echo "$year is Not a Leap Year"
fi


Answer:-

[sashini@Sashini ~]$ vi q16.sh
[sashini@Sashini ~]$ chmod 777 q16.sh
[sashini@Sashini ~]$ ./q16.sh
Enter a year: 2025
2025 is Not a Leap Year
[sashini@Sashini ~]$ chmod 777 q16.sh
[sashini@Sashini ~]$ ./q16.sh
Enter a year: 2024
2024 is a Leap Year