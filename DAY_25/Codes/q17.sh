//17. Write a script to wish for a birthday if the current date and month are the same as the date of birth received from the user.


# Read user's birth date and month
read -p "Enter your birth date (DD): " bday
read -p "Enter your birth month (MM): " bmonth

# Get current date and month
current_day=$(date +%d)
current_month=$(date +%m)

# Check if birthday matches today's date
if [[ "$bday" == "$current_day" && "$bmonth" == "$current_month" ]]; then
    echo "🎉 Happy Birthday! 🎂"
else
    echo "Today is not your birthday."
fi


Answer:-

[sashini@Sashini ~]$ vi q17.sh
[sashini@Sashini ~]$ chmod 777 q17.sh
[sashini@Sashini ~]$ ./q17.sh
Enter your birth date (DD): 17
Enter your birth month (MM): 04
Today is not your birthday.
[sashini@Sashini ~]$ chmod 777 q17.sh
[sashini@Sashini ~]$ ./q17.sh
Enter your birth date (DD): 23
Enter your birth month (MM): 06
🎉 Happy Birthday! 🎂