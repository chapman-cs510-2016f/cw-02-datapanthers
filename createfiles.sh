#!/bin/bash

# checks to see directory exists and if it does, removes contents of directory. 
if [ -d tmpfiles ]
then
	rm -r tmpfiles
	echo removing directory
fi

# create directory
mkdir tmpfiles

for i in $(seq -w 100)
do
	touch tmpfiles/file$i
done

# append the string Temporary File XXX into the files
for i in $(seq -w 100)
do 
	echo Temporary file $i >> tmpfiles/file$i
	# tests to see if the string is correctly
	# cat tmpfiles/files
done

#removes the temp directory and its contents
if [ -d tmpfiles ]
then 
	rm -r tmpfiles
	echo removing directory
fi



