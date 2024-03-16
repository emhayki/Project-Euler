
from sympy import divisors

# Problem 21
# ==========
#    Let d(n) be defined as the sum of proper divisors of n (numbers less than
#    n which divide evenly into n).
#    If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair
#    and each of a and b are called amicable numbers.

#    For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22,
#    44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1,
#    2, 4, 71 and 142; so d(284) = 220.

#    Evaluate the sum of all the amicable numbers under 10000.


Sum = 0
Nums = [] 
for i in range(1, 10000):
    a1 = divisors(i)
    b1 = sum(a1[:-1])

    a2 = divisors(b1)
    b2 = sum(a2[:-1])
    if i == b2 and i != b1 and i not in Nums and b1 not in Nums:
        Nums.extend([i, b1])
        Sum += i + b1
        print(f"num1 = {i}, num2 = {b1}, Sum = {Sum}")