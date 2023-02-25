 java --version
 if [ $? -eq 0 ]
 then
	 echo "java is install you can install maven"

 else
 	echo "java is not install"
	wget https://download.oracle.com/java/19/latest/jdk-19_linux-x64_bin.tar.gz	
 fi	
