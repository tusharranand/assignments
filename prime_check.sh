# a program that takes a input and determines if the number is a prime

factors=0
read -p "Enter the number to be checked: " n

for i in $( seq 2 $(($n-1)));
do
        if [ $(($n%$i)) -eq 0 ];
        then
                factors+=1
        fi
done

if [ $factors -eq 0 ];
then
        echo $n "is prime."
else
        echo $n "is not prime."
fi
