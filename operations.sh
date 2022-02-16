# Do following arithmetic operation and find the one that is maximum and minimum

read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c

l="a+b*c"
m="a%b+c"
n="c+a/b"
o="a*b+c"

p=`echo $a $b $c | awk '{print $1+($2*$3)}'`
q=`echo $a $b $c | awk '{print ($1%$2)+$3}'`
r=`echo $a $b $c | awk '{print $3+($1/$2)}'`
s=`echo $a $b $c | awk '{print ($1*$2)+$3}'`

echo $l "=" $p
echo $m "=" $q
echo $n "=" $r
echo $o "=" $s

t=${r%.*}

echo ""

if [ $p -gt $q ]&&[ $p -gt $t ]&&[ $p -gt $s ];
then
        echo $p " is the maximum of all numbers."
elif [ $q -gt $t ]&&[ $q -gt $s ];
then
        echo $q " is the maximum of all numbers."
elif [ $t -gt $s ];
then
        echo $r " is the maximum of all numbers."
else
        echo $s " is the maximum of all numbers."
fi

echo ""

if [ $p -lt $q ]&&[ $p -lt $t ]&&[ $p -lt $s ];
then
        echo $p " is the minimum of all numbers."
elif [ $q -lt $t ]&&[ $q -lt $s ];
then
        echo $q " is the minimum of all numbers."
elif [ $t -lt $s ];
then
        echo $r " is the minimum of all numbers."
else
        echo $s " is the minimum of all numbers."
fi
