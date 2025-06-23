//3. Write a shell script to check entered string is palindrome or not.


echo "Enter a string:"
read str

if [ "$str" = "$(echo $str | rev)" ]; then
    echo "Palindrome"
else
    echo "Not a palindrome"
fi






Answer:-
[sashini@Sashini ~]$ vi q3.sh
[sashini@Sashini ~]$ chmod 777 q3.sh
[sashini@Sashini ~]$ ./q3.sh
Enter a string:
madam
Palindrome
[sashini@Sashini ~]$ chmod 777 q3.sh
[sashini@Sashini ~]$ ./q3.sh
Enter a string:
apple
Not a palindrome