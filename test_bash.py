#!/usr/bin/env python
import subprocess

# test to see if helloworld.sh outputs correctly
def test_helloworld():
    
    # calling subprocess to get output and store to variable n
    n = subprocess.check_output("./helloworld.sh")
    assert n == "Hello world.\n\n"
    # this part was for debugging, prints output if the assert test passes. 
    # print "It's the same"
    

# test to see if countup.sh outputs correctly
def test_countup():
    # calling subprocess to get output and store to variable n
    n = subprocess.check_output(["./countup.sh","5"])
    assert n == "1 2 3 4 5 \n"
    # this part was for debugging, prints output if the assert test passes.
    # print "It's the same"
    
### INSTRUCTOR COMMENTS
# Good. Don't forget to include docstrings for the module and each function.
# It's a good habit to get into, and helps other users of your code use the
# python help system to understand what everything does and why it is there.
# Note that when calling assert, it can be useful to include information about
# what you are testing in case the test fails. This makes bugtesting more rapid
# later on.
#
# example:
#   assert n == "1 2 3 \n", "Value of n: "+repr(n)
#
