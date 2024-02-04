
import os
os.system('clear')
import numpy as np
from sympy import primefactors

# Problem 3
# =========
#    The prime factors of 13195 are 5, 7, 13 and 29.
#    What is the largest prime factor of the number 600851475143 ?

number = 600851475143
factors = primefactors(number)
print(max(factors))