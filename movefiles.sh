# Move files from one folder to the respective foldes.

for files in *.txt
do
	foldername=`echo $files | awk -F. '{print $1}'`;
	echo $files;
	echo $foldername;
	printf "\n";
	if [ -d $foldername ]
	then
		rm -r $foldername;
	fi
	mkdir $foldername;
	mv $files $foldername;
done
