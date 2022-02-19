# Write a program that reads 5 Random 3 Digit values and then outputs the minimum
# and the maximum value

a=$((RANDOM%900+100))
b=$((RANDOM%900+100))
c=$((RANDOM%900+100))
d=$((RANDOM%900+100))
e=$((RANDOM%900+100))

echo ""

echo "Random numbers are: "

echo ""

echo "First number is: " $a
echo "Second number is: " $b
echo "Third number is: " $c
echo "Fourth numner is: " $d
echo "Fifth number is: " $e

echo ""

if [ $a -gt $b ]&&[ $a -gt $c ]&&[ $a -gt $d ]&&[ $a -gt $e ]
then
        echo $a " is the maximum of all numbers."
elif [ $b -gt $c ]&&[ $b -gt $d ]&&[ $b -gt $e ]
then
        echo $b " is the maximum of all numbers."
elif [ $c -gt $d ]&&[ $c -gt $e ]
then
        echo $c " is the maximum of all numbers."
elif [ $d -gt $e ]
then
        echo $d " is the maximum of all numbers."
else
        echo $e " is the maximum of all numbers."
fi

echo ""

if [ $a -lt $b ]&&[ $a -lt $c ]&&[ $a -lt $d ]&&[ $a -lt $e ]
then
        echo $a " is the minimum of all numbers."
elif [ $b -lt $c ]&&[ $b -lt $d ]&&[ $b -lt $e ]
then
        echo $b " is the minimum of all numbers."
elif [ $c -lt $d ]&&[ $c -lt $e ]
then
        echo $c " is the minimum of all numbers."
elif [ $d -lt $e ]
then
        echo $d " is the minimum of all numbers."
else
        echo $e " is the minimum of all numbers."
fi
