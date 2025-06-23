//4. Write a shell script to validate the entered date. (eg. The date format is: dd-mm-yyyy).

read -p "Enter a date (dd-mm-yyyy): " date

# Check basic format using regex
if [[ $date =~ ^(0[1-9]|[12][0-9]|3[01])-(0[1-9]|1[0-2])-[0-9]{4}$ ]]; then
    # Try parsing with date command to check if it’s a valid date
    if date -d "$date" +"%d-%m-%Y" >/dev/null 2>&1; then
        echo "Valid date: $date"
    else
        echo "Invalid date (logically incorrect, like 31-02-2023)"
    fi
else
    echo "Invalid format. Use dd-mm-yyyy (e.g., 05-08-2025)"
fi

Answer:-

[sashini@Sashini ~]$ vi q4.sh
[sashini@Sashini ~]$ chmod 777 q4.sh
[sashini@Sashini ~]$ ./q4.sh
Enter a date (dd-mm-yyyy): 23-06-2025
Invalid date (logically incorrect, like 31-02-2023)