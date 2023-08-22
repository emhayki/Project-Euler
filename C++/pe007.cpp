#include <iostream>
#include <cmath>


bool isPrime(int n) {

    if (n % 2 == 0 || n % 3 == 0)
        return false;
    
    for (int i = 5; i * i <= n; i += 6) {
        if (n % i == 0 || n % (i + 2) == 0)
            return false;
    }
    
    return true;
}

int main() {

int i = 1;
long long int num = 3;

while (i < 10000)
{
   if(isPrime(num) == true) i++; 

   num++;
}

std::cout << num - 1 << std::endl;

    return 0;
}