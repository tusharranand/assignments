# print a table of the powers of 2 that are less than or equal to 2^n till 256

a=$1

if [ $1 -gt 8 ];
then
	a=8
fi

i=1

while [ $i -le $a ]
do
	echo $((2**$i))
	((i++))
done
