//10. Write a shell script to generate a marksheet of a student. Take 3 subjects, calculate and display the total marks, average and grades of each subject obtained by the student.


# Function to determine grade based on marks
get_grade() {
    marks=$1
    if [ $marks -ge 75 ]; then
        echo "A"
    elif [ $marks -ge 60 ]; then
        echo "B"
    elif [ $marks -ge 50 ]; then
        echo "C"
    elif [ $marks -ge 35 ]; then
        echo "D"
    else
        echo "F"
    fi
}

# Read student name
read -p "Enter Student Name: " name

# Read marks for 3 subjects
read -p "Enter marks for Subject 1: " m1
read -p "Enter marks for Subject 2: " m2
read -p "Enter marks for Subject 3: " m3

# Get grades for each subject
g1=$(get_grade $m1)
g2=$(get_grade $m2)
g3=$(get_grade $m3)

# Calculate total and average
total=$((m1 + m2 + m3))
average=$((total / 3))

# Display marksheet
echo "-----------------------------"
echo "         MARKSHEET"
echo "-----------------------------"
echo "Student Name : $name"
echo "-----------------------------"
echo "Subject     Marks     Grade"
echo "Subject 1     $m1         $g1"
echo "Subject 2     $m2         $g2"
echo "Subject 3     $m3         $g3"
echo "-----------------------------"
echo "Total Marks : $total"
echo "Average     : $average"
echo "-----------------------------"




Answer:-
[sashini@Sashini ~]$ vi q10.sh
[sashini@Sashini ~]$ chmod 777 q10.sh
[sashini@Sashini ~]$ ./q10.sh
Enter Student Name: Sashini
Enter marks for Subject 1: 85
Enter marks for Subject 2: 86
Enter marks for Subject 3: 78
-----------------------------
         MARKSHEET
-----------------------------
Student Name : Sashini
-----------------------------
Subject     Marks     Grade
Subject 1     85         A
Subject 2     86         A
Subject 3     78         A
-----------------------------
Total Marks : 249
Average     : 83
-----------------------------