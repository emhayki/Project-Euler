
import os
os.system('clear')
from sympy import primerange

# Problem 10
# ==========
#    The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#    Find the sum of all the primes below two million.

print(sum(primerange(1,2000000)))
