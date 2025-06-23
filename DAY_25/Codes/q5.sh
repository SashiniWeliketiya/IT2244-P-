//5. Write a program using a function, which converts each word in a given text into capital

capitalize_words() {
    input="$1"
    echo "$input" | awk '{
        for (i = 1; i <= NF; i++) {
            $i = toupper(substr($i,1,1)) tolower(substr($i,2))
        }
        print
    }'
}

# Read input from user
read -p "Enter a sentence: " text

# Call the function
capitalize_words "$text"


Answer:-
[sashini@Sashini ~]$ vi q5.sh
[sashini@Sashini ~]$ chmod 777 q5.sh
[sashini@Sashini ~]$ ./q5.sh
Enter a sentence: Hello World
Hello World