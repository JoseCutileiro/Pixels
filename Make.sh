#!/bin/bash

if [ -z $1 ]
then 
	echo "Help command will show you more options"
	echo $0 "help"
	exit 0
fi

if [ $1 = "help" ] 
then
	echo "[HELP]"
	echo "Hello from @JoseCutileiro studios"
	echo "Nothing here yet"
fi


# COMPILE PROGRAM - DEFAULT
if [ $1 = "compile" ] 
then
	echo "Compiling all programs by default (slow process)"
	echo "> [Simple example] Compiling triangle.cpp"
	g++ triangle.cpp -o triangle -lGL -lGLU -lglut
fi

if [ $1 = "clean" ]
then
	echo "[CLEAN] Part 1"
	echo "> Deleting all binary files"
	find . -type f  ! -name "*.*"  -delete
fi
