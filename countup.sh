#!/bin/bash

if [ $1 > 0 ]
then
	for i in $(seq $1)
	do
		printf $i 
		printf " " 
	done
	echo
else
	exit 1
fi

