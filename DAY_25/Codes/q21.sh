//21. Write a script to explain the Truth table of AND, OR, NOT, NAND, NOR, XOR, XNOR

//Receive two inputs from the user either 0 or 1
//Receive the type of Gate from the user by offering options to the user
//Return the output to 0 or 1



echo "Enter two binary inputs (0 or 1):"
read -p "Enter first input (A): " A
read -p "Enter second input (B): " B

# Validate input
if [[ ! "$A" =~ ^[01]$ || ! "$B" =~ ^[01]$ ]]; then
    echo "Invalid input! Only 0 or 1 is allowed."
    exit 1
fi

echo "Select the logic gate to apply:"
echo "1. AND"
echo "2. OR"
echo "3. NOT (applies only to first input)"
echo "4. NAND"
echo "5. NOR"
echo "6. XOR"
echo "7. XNOR"
read -p "Enter your choice (1-7): " choice

case $choice in
    1)
        result=$((A & B))
        echo "AND Gate: $A AND $B = $result"
        ;;
    2)
        result=$((A | B))
        echo "OR Gate: $A OR $B = $result"
        ;;
    3)
        result=$((1 - A))
        echo "NOT Gate: NOT $A = $result"
        ;;
    4)
        result=$((1 - (A & B)))
        echo "NAND Gate: $A NAND $B = $result"
        ;;
    5)
        result=$((1 - (A | B)))
        echo "NOR Gate: $A NOR $B = $result"
        ;;
    6)
        result=$((A ^ B))
        echo "XOR Gate: $A XOR $B = $result"
        ;;
    7)
        result=$((1 - (A ^ B)))
        echo "XNOR Gate: $A XNOR $B = $result"
        ;;
    *)
        echo "Invalid choice! Please select a number from 1 to 7."
        ;;
esac



Answer:-

[sashini@Sashini ~]$ vi q21.sh
[sashini@Sashini ~]$ chmod 777 q21.sh
[sashini@Sashini ~]$ ./q21.sh
Enter two binary inputs (0 or 1):
Enter first input (A): 0
Enter second input (B): 1
Select the logic gate to apply:
1. AND
2. OR
3. NOT (applies only to first input)
4. NAND
5. NOR
6. XOR
7. XNOR
Enter your choice (1-7): 1
AND Gate: 0 AND 1 = 0
[sashini@Sashini ~]$ chmod 777 q21.sh
[sashini@Sashini ~]$ ./q21.sh
Enter two binary inputs (0 or 1):
Enter first input (A): 1
Enter second input (B): 1
Select the logic gate to apply:
1. AND
2. OR
3. NOT (applies only to first input)
4. NAND
5. NOR
6. XOR
7. XNOR
Enter your choice (1-7): 5
NOR Gate: 1 NOR 1 = 0