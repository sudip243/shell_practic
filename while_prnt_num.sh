#!/bin/bash
echo "enter a number: "
read num
i=1
while ( $i -le 10 )
do
	echo  "$i"
	i=`expr $i+1`
done
echo "this is the end of the loop"

