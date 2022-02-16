
# Since these problems were too small, there are 3 in this file.

# 1. Use Random Function ((RANDOM)) to get Single Digit

single=$((RANDOM%10))

echo "A random single number digit is: " $single
echo ""

# 2. Use Random to get Dice Number between 1 to 6

dice=$((RANDOM%6+1))

echo "A random dice roll gives: " $dice
echo ""

# 3. Add two Random Dice Number and Print the Result

dice1=$((RANDOM%6+1))
dice2=$((RANDOM%6+1))
sum=$(($dice1+$dice2))

echo "First random dice roll gives: " $dice1
echo "Second random dice roll gives: " $dice2
echo "Sum of the two dice rolls is: " $sum
