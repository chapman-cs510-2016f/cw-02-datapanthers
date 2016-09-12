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