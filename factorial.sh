
read -p "Enter a number: " n

m=$n

for i in $(seq 1 $(($n-1)));
do
        m=$(($m*$i))
done

echo $n"! = "$m
