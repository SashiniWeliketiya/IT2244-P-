//21. Write a script to explain the Truth table of AND, OR, NOT, NAND, NOR, XOR, XNOR


echo "Truth Table for Logic Gates"
echo "A B | AND OR NOT_A NOT_B NAND NOR XOR XNOR"
echo "------------------------------------------"

# Loop through all combinations of A and B (0 and 1)
for A in 0 1; do
    for B in 0 1; do
        # Logical operations
        AND=$((A & B))
        OR=$((A | B))
        NOT_A=$((!A))
        NOT_B=$((!B))
        NAND=$((!(A & B)))
        NOR=$((!(A | B)))
        XOR=$((A ^ B))
        XNOR=$((!(A ^ B)))

        # Print the truth table row
        printf "%d %d |  %d   %d    %d      %d     %d    %d   %d    %d\n" \
            "$A" "$B" "$AND" "$OR" "$NOT_A" "$NOT_B" "$NAND" "$NOR" "$XOR" "$XNOR"
    done
done


Answer:-

[sashini@Sashini ~]$ vi q21.sh
[sashini@Sashini ~]$ chmod 777 q21.sh
[sashini@Sashini ~]$ ./q21.sh
Truth Table for Logic Gates
A B | AND OR NOT_A NOT_B NAND NOR XOR XNOR
------------------------------------------
0 0 |  0   0    1      1     1    1   0    1
0 1 |  0   1    1      0     1    0   1    0
1 0 |  0   1    0      1     1    0   1    0
1 1 |  1   1    0      0     0    0   0    1