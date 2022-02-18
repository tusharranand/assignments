
function prime(){
factors=0
n=$1
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
}

read -p "Enter the number: " num
prime $num

s=0
rev=""
temp=$num
while [ $num -gt 0 ]
do
        s=$(( $num % 10 ))
        num=$(( $num / 10 ))
        rev=`echo $rev$s`
done
palin=`echo $temp$rev`

echo "Palindrome is" $palin
prime $palin
