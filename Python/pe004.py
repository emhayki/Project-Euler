
import os
os.system('clear')
import numpy as np

# Problem 4
# =========
#    A palindromic number reads the same both ways. The largest palindrome made
#    from the product of two 2-digit numbers is 9009 = 91 × 99.
#    Find the largest palindrome made from the product of two 3-digit numbers.

def is_palindrome_number(n):
    s = str(n)
    return s == s[::-1]

maxNum = 0

for i in range(100, 1000):
    for j in range(100, 1000):
        num = i * j
        if (is_palindrome_number(num) and num > maxNum):
            maxNum = num
            

print(maxNum)


