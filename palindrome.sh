
function palindrome(){
num=$1
s=0
rev=""
temp=$1
while [ $num -gt 0 ]
do
	s=$(( $num % 10 ))
	num=$(( $num / 10 ))
	rev=`echo $rev$s`
done

if [ $temp -eq $rev ];
then
	echo "Number is palindrome"
else
	echo "Number is NOT palindrome"
fi
}

read -p "Enter first number: " num1

palindrome $num1

read -p "Enter second number: " num2

palindrome $num2
