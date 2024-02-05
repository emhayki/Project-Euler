
import os
os.system('clear')
import numpy as np

# Problem 5
# =========
#    2520 is the smallest number that can be divided by each of the numbers
#    from 1 to 10 without any remainder.
#    What is the smallest positive number that is evenly divisible by all of
#    the numbers from 1 to 20?

num   = 2520

while True:
    isDiv = True
    for i in range(1,21):
        if num % i != 0:
            isDiv = False
            break
        
    if(isDiv == True):
        break

    num += 20


print(num)