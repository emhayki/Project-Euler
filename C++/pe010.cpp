#include <iostream>
#include <cmath>


bool isPrime(int n) {

    if (n == 2 || n == 3)
        return true;

    if (n % 2 == 0 || n % 3 == 0)
        return false;
    
    for (int i = 5; i * i <= n; i += 6) {
        if (n % i == 0 || n % (i + 2) == 0)
            return false;
    }
    
    return true;
}

int main() {

unsigned long long sum = 0;

for (int i = 2; i < 2000000; i++)
{
   if (isPrime(i)) sum += i;
   
   
}

std::cout << sum << std::endl;

    return 0;
}