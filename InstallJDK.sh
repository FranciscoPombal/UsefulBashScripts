#!bin/bash

		# This script installs the most recent JDK on your system
		# Tested on Ubuntu/Xubuntu 14.04, 15.04, 15.10, 16.04
		# Check for most recent version: http://www.oracle.com/technetwork/java/javase/downloads/index.html
		# Most recent version (2016/08/21): 8u102
		wget --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u102-b14/jdk-8u102-linux-x64.tar.gz"
		sudo mkdir /usr/java
		sudo mv ./jdk*.tar.gz /usr/java
		cd /usr/java
		sudo tar zxvf jdk*.tar.gz
		sudo rm jdk*.tar.gz
		sudo cp ./jdk1.8.0_102/man/man1/* /usr/share/man/man1/
		cd
		sudo update-alternatives --install "/usr/bin/java" "java" "/usr/java/jdk1.8.0_102/bin/java" 1
		sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/java/jdk1.8.0_102/bin/javac" 1
		sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/java/jdk1.8.0_102/bin/javaws" 1
		sudo update-alternatives --install "/usr/bin/jar" "jar" "/usr/java/jdk1.8.0_102/bin/jar" 1
		sudo update-alternatives --set "java" "/usr/java/jdk1.8.0_102/bin/java"
		sudo update-alternatives --set "javac" "/usr/java/jdk1.8.0_102/bin/javac"
		sudo update-alternatives --set "javaws" "/usr/java/jdk1.8.0_102/bin/javaws"
		sudo update-alternatives --set "jar" "/usr/java/jdk1.8.0_102/bin/jar"
		
exit 0;