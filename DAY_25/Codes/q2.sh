
//2. Write a script to see the current date, time, username, and current directory.


echo "Current Date: $(date +%d-%m-%Y)"
echo "Current Time: $(date +%H:%M:%S)"
echo "Username    : $USER"
echo "Current Dir : $(pwd)"


Answer:-

[sashini@Sashini ~]$ vi q2.sh
[sashini@Sashini ~]$ chmod 777 q2.sh
[sashini@Sashini ~]$ ./q2.sh
Current Date: 23-06-2025
Current Time: 20:31:01
Username    : sashini
Current Dir : /home/sashini