#!/bin/bash

# checks to see directory exists and if it does, removes contents of directory. 
if [ -d tmpfiles ]
then
	rm -r tmpfiles
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
fi


### INSTRUCTOR COMMENTS
# Excellent. One major comment: note that you copy-paste the same code
# in two places (beginning and end removal of tmpfiles). This is bad.
# If you have to change code later, you have to change every copy.
# Instead, modularize your code by using functions.  For example:
#
#  function remove_files {
#    if [ -d tmpfile ]; then
#      rm -r tmpfiles
#    fi
#  }
#
# Then you can simply call the function in two places. If you have
# to modify the code later, you modify it only one place, and every
# call to that function uses the updated code.
