//6. Write a script to wish the user according to the time, by displaying “Good Morning”,“Good Afternoon” or “Good Evening”.

# Get the current hour (24-hour format)
hour=$(date +"%H")

# Decide the greeting based on the hour
if [ "$hour" -ge 5 ] && [ "$hour" -lt 12 ]; then
    echo "Good Morning"
elif [ "$hour" -ge 12 ] && [ "$hour" -lt 17 ]; then
    echo "Good Afternoon"
else
    echo "Good Evening"
fi


Answer:-
[sashini@Sashini ~]$ vi q6.sh
[sashini@Sashini ~]$ chmod 777 q6.sh
[sashini@Sashini ~]$ ./q6.sh
Good Evening
[sashini@Sashini ~]$
