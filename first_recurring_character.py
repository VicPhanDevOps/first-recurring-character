#!/bin/python

# return first recurring character in string 

# define string
foo = str(input("Input random characters: "))

# create empty hash table 
h = {}

# define function for returning first character
def firstRecur(str): 
    for ch in str: 
        if ch in h: 
            return ch; 
        else: 
            h[ch] = 0
    return '\0'

# call function 
print("The first recurring character is: ", firstRecur(foo))
