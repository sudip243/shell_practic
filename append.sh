echo -e "enter the name of the file :\c"
read file_name
if [ -f $file_name ]
then
	if [ -w $file_name ]
	then
		echo "type some text to quit cntrl +d"
		cat >> $file_name
	else
		echo "the file do not have write permisson"
	fi
else
	echo "$file_name not exist"
fi	

