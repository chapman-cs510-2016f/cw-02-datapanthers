#!/bin/bash

if [ $1 > 0 ]
then
	for i in $(seq $1)
	do
		printf $i 
		printf " " 
	done
	# added echo to end on a new line
    echo
else
	exit 1
fi

### INSTRUCTOR COMMENTS
# Note the following simplification inside your first if block:
#   echo $(seq $1)
# The function seq already does everything you need, so there is no
# need to reimplement that functionality. In some sense, you run the
# same code twice here by using seq, then unpacking it to use printf
# instead.
