//7. Write a menu-driven shell script which will print the following menu and execute the given task.

//Display calendar of the current month
//Display today’s date and time
//Display usernames that are currently logged in the system
//Display your name at the given x, y position
//Display your terminal number


while true; do
    echo "Menu:"
    echo "1) Display calendar of the current month"
    echo "2) Display today’s date and time"
    echo "3) Display usernames currently logged in"
    echo "4) Display your name at the given x, y position"
    echo "5) Display your terminal number"
    echo "6) Exit"
    read -p "Enter your choice [1-6]: " choice

    case $choice in
        1)
            cal
            ;;
        2)
            date
            ;;
        3)
            who | awk '{print $1}' | sort | uniq
            ;;
        4)
            read -p "Enter x position (column): " x
            read -p "Enter y position (row): " y
            # Move cursor to x,y then print name
            # Your name can be fetched from $USER or you can hardcode it
            name="$USER"
            tput cup $y $x
            echo "$name"
            # Move cursor to next line after printing
            tput cup $((y+1)) 0
            ;;
        5)
            tty
            ;;
        6)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid choice, please select 1-6"
            ;;
    esac
    echo
done



Answer:-

[sashini@Sashini ~]$ vi q7.sh
[sashini@Sashini ~]$ chmod 777 q7.sh
[sashini@Sashini ~]$ ./q7.sh
Menu:
1) Display calendar of the current month
2) Display today’s date and time
3) Display usernames currently logged in
4) Display your name at the given x, y position
5) Display your terminal number
6) Exit
Enter your choice [1-6]: 1
      June 2025
Su Mo Tu We Th Fr Sa
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30


Menu:
1) Display calendar of the current month
2) Display today’s date and time
3) Display usernames currently logged in
4) Display your name at the given x, y position
5) Display your terminal number
6) Exit
Enter your choice [1-6]: 2
Mon Jun 23 21:05:27 +0530 2025

Menu:
1) Display calendar of the current month
2) Display today’s date and time
3) Display usernames currently logged in
4) Display your name at the given x, y position
5) Display your terminal number
6) Exit
Enter your choice [1-6]: 3

Menu:
1) Display calendar of the current month
2) Display today’s date and time
3) Display usernames currently logged in
4) Display your name at the given x, y position
5) Display your terminal number
6) Exit

Enter your choice [1-6]: 5
/dev/pts/1

Menu:
1) Display calendar of the current month
2) Display today’s date and time
3) Display usernames currently logged in
4) Display your name at the given x, y position
5) Display your terminal number
6) Exit
Enter your choice [1-6]: 6
Exiting...