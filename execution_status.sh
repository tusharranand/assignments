# Execute command "hello" ans "ls" and check its execution statusand print whetheer the command executed successfully or not

commands="hello ls"

for i in $commands
do
	echo "Executing command, " "\""$i"\"."
	$i
	x=`echo $?`
	if [ $x -eq 0 ]
	then
		echo "Command " "\""$i"\"" "was executed successfully."
	else
		echo "No command by the name " "\""$i"\"" "was found."
	fi
	echo " "
done
