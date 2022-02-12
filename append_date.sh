# Append current date to all log file names which has extention .log.1 from a folder

touch abc.log.1 def.log.1 ghi.log.1 jkl.log.1 mno.log.1

echo "Files to be renamed: "

now=$(date +'%d%m%Y')

echo ""

for files in *.log.1
do
	echo $files
done

echo ""

for files in *.log.1
do
        folder=`echo $files | awk -F . '{print $1}'`
        folder+=".""$now"".log.1"
	cp $files $folder
	echo "New file," "\""$folder"\"" "was saved."
done

