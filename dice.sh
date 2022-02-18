
declare -A dice=( [1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0 )

while [[ ${dice[1]} -le 9 && ${dice[2]} -le 9 && ${dice[3]} -le 9 && ${dice[4]} -le 9 && ${dice[5]} -le 9 && ${dice[6]} -le 9 ]];
do
	roll=$((RANDOM%6+1))
	dice[$roll]=$((${dice[$roll]}+1))
done

#max=${dice[1]}

#for i in $(seq 6);
#do
#	for ((j=$i; j<=6; j++));
#	do
#		if [ $max -ge  ]

echo ${dice[@]}
echo ${!dice[@]}
