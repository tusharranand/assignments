# find the magic number

comp=""
echo "Think of a number between 1-100"
read -p "Is your number greater than, less than or equal to 50? (g/l/e): " comp

ans=50
up=100
lo=0

while [ $comp != "e" ];
do
        if [ $comp = "g" ];
        then
		lo=$ans
                if [ $(($ans%2)) -eq 0 ] && [ $(($up%2)) -eq 0 ];
                then
                	ans=$((($up+$ans)/2))
		elif [ $(($ans%2)) -eq 0 ] && [ $(($up%2)) -eq 0 ];
                then
                        ans=$((($up+$ans)/2))
		else
			ans=$((($up+$ans+1)/2))
		fi
	elif [ $comp = "l" ];
	then
		up=$ans
		if [ $(($ans%2)) -eq 0 ] && [ $(($lo%2)) -eq 0 ];
                then
                        ans=$((($ans+$lo)/2))
                elif [ $(($ans%2)) -ne 0 ] && [ $(($lo%2)) -ne 0 ];
		then
			ans=$((($ans+$lo)/2))
		else
                        ans=$((($ans+$lo+1)/2))
		fi
	fi
	read -p "Is your number greater than, less than or equal to "$ans"? (g/l/e): " comp
done

echo "Your magic number is, " $ans"."
