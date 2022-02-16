# Print true if day of month is between March 20 and June 20, false otherwise.

read -p "Enter the date in the format (Month 00): " date

month=`echo $date | awk '{print $1}'`
month=${month^^}
day=`echo $date | awk '{print $2}'`
#day="$day"

if [ $month = "MARCH" ]&&[ $day -ge 20 ]&&[ $day -le 31 ];
then
        echo "True"
elif [ $month = "APRIL" ]&&[ $day -ge 1 ]&&[ $day -le 30 ];
then
        echo "True"
elif [ $month = "MAY" ]&&[ $day -ge 1 ]&&[ $day -le 31 ];
then
        echo "True"
elif [ $month = "JUNE" ]&&[ $day -ge 1 ]&&[ $day -le 20 ];
then
        echo "True"
else
        echo "False"
fi
