

read -p "Convert from (feet, inch or meter): " unit1

case $unit1 in
	feet)
		read -p "Convert to (inch or meter): " unit2
		case $unit2 in
		inch)
	                echo ""
			echo "Converting to inch."
	                echo ""
			read -p "Enter the value to be converted: " num1
			num2=`echo $num1 | awk '{print $num1*12}'`
			echo ""
			echo $num1 "feet = " $num2 "inch"
			;;
	        meter)
	                echo ""
			echo "Converting to meter."
	                echo ""
			read -p "Enter the value to be converted: " num1
			num2=`echo $num1 | awk '{print $num1*0.3048}'`
			echo ""
			echo $num1 "feet = " $num2 "meter"
			;;
	        *)
	                echo "Not Available."
	                ;;
		esac
		;;
	inch)
		echo ""
		echo "Converting to feet."
		echo ""
		read -p "Enter the value to be converted: " num1
		num2=`echo $num1 | awk '{print $num1/12}'`
		echo ""
		echo $num1 "inch = " $num2 "feet"
		;;
	meter)
		echo ""
		echo "Converting to feet."
		echo ""
		read -p "Enter the value to be converted: " num1
		num2=`echo $num1 | awk '{print $num1*3.2808}'`
		echo ""
		echo $num1 "meter = " $num2 "feet"
		;;
	*)
		echo "Not Available."
		;;
esac
