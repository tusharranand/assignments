

declare -a numbers=()

for i in $( seq 0 9 );
do
	x=$((RANDOM%900+100))
	numbers[$i]=$x
done

fbig=${numbers[1]}
sbig=$fbig
ssml=$fbig

for i in $( seq 0 9 );
do
	if [ $fbig -le ${numbers[$i]} ];
	then
		sbig=$fbig
		fbig=${numbers[$i]}
	elif [ $sbig -le ${numbers[$i]} ];
	then
		sbig=${numbers[$i]}
	fi
done


for i in $( seq 0 9 );
do
        if [ $fbig -ge ${numbers[$i]} ];
        then
                ssml=$fbig
                fbig=${numbers[$i]}
	elif [ $ssml -ge ${numbers[$i]} ];
        then
                ssml=${numbers[$i]}
        fi
done


echo ${numbers[@]}
echo $sbig "is the second highest value."
echo $ssml "is the second lowest value."
