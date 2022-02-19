
function degC(){
	F=` echo $1 | awk '{print ($1*9/5)+32}'`
}

function degF(){
        C=` echo $1 | awk '{print ($1-32)*5/9}'`
}


read -p "Enter the value: " deg
read -p "Enter the unit required (C/F): " conv

case "$conv" in
	F)
		if [ $deg -ge 0 ] && [ $deg -le 100 ];
		then
			degC $deg
			echo $deg "deg C =" $F "deg F"
		else
			echo "Invalid Input."
		fi
		;;
	C)
		if [ $deg -ge 32 ] && [ $deg -le 212 ];
                then
                        degF $deg
                        echo $deg "deg F =" $C "deg C"
                else
                        echo "Invalid Input."
                fi

		;;
esac
