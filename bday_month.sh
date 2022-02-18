

declare -A bdaymonth=( [jan92]=0 [feb92]=0 [mar92]=0 [apr92]=0 [may92]=0 [jun92]=0 [jul92]=0 [aug92]=0 [sep92]=0 [oct92]=0 [nov92]=0 [dec92]=0 [jan93]=0 [feb93]=0 [mar93]=0 [apr93]=0 [may93]=0 [jun93]=0 [jul93]=0 [aug93]=0 [sep93]=0 [oct93]=0 [nov93]=0 [dec93]=0 )

for i in $(seq 50)
do
	year=$((RANDOM%2+92))
	rmonth=$((RANDOM%12+1))

	case $rmonth in
		1)
			month=`echo "jan"$year` ;;
		2)
			month=`echo "feb"$year` ;;
		3)
			month=`echo "mar"$year` ;;
		4)
			month=`echo "apr"$year` ;;
		5)
			month=`echo "may"$year` ;;
		6)
			month=`echo "jun"$year` ;;
		7)
			month=`echo "jul"$year` ;;
		8)
			month=`echo "aug"$year` ;;
		9)
			month=`echo "sep"$year` ;;
		10)
			month=`echo "oct"$year` ;;
		11)
			month=`echo "nov"$year` ;;
		12)
			month=`echo "dec"$year` ;;
	esac
	bdaymonth[$month]=$((${bdaymonth[$month]}+1))
done

for i in ${bdaymonth[@]};
do
	if [ $i -ne 0 ];
	then
		echo $i
	fi
done
