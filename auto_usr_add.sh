#!/bin/bash
add_user()
{
	USER=$1
	PASS=$2
	useradd -m -p $PASS $USER && echo "successfully added user"
}


#MAIN

add_user sudip 1234



#for checking the user and passw0rd go to cd /etc/passwd
