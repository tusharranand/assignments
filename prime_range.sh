# extension of prime numbers program

read -p "Enter first number of the range: " a
read -p "Enter second number of the range: " b

for n in $( seq $a $b );
do
        factors=0
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
done
