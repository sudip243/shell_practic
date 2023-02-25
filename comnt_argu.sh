if [ $# -eq 3 ]
then
echo "CL argu demo"
echo "first argument name is "$1
echo "script file name is "$0
echo "seconf argument value is "$2
echo "number of argument is "$#
else
	echo "you should pass the 3 arguments"
	echo "like : sh $0 argu1 argu2 argu3"
fi	
