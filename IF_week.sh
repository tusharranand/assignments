# Printing Days of week using IF

read -p "Enter a number (1-7): " num

if [ $num -eq 1 ];
then
        echo "Sunday"
elif [ $num -eq 2 ];
then
        echo "Monday"
elif [ $num -eq 3 ];
then
        echo "Tuesday"
elif [ $num -eq 4 ];
then
        echo "Wednesday"
elif [ $num -eq 5 ];
then
        echo "Thursday"
elif [ $num -eq 6 ];
then
        echo "Friday"
elif [ $num -eq 7 ];
then
        echo "Saturday"
fi
