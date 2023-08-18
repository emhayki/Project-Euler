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

long long factor = 0;
long long num = 600851475143;

for (int i = 2; i <= std::sqrt(num); i++){

    if (num % i == 0 && isPrime(i) == true) factor = i;
}

std::cout << factor << "\n";


    return 0;
}