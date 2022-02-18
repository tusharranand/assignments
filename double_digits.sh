

declare -a dd=()

x=0

for i in $( seq 100 );
do
	if [ $(($i%11)) -eq 0 ];
	then
		dd[$x]=$i
		((x++))
	fi
done

echo ${dd[@]}
