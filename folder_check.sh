# Check if a folder exists or not. If it's not present, create it

read -p "Enter name of the folder to be made: " name

echo ""

if [ -d $name ]
then
	echo "Folder named," "\""$name"\"" "already exists."
else
	mkdir $name
	echo "Folder named," "\"$name""\"" "was made."
fi
