#include <iostream>
#include <cmath>

int countDivisors(long long num) {
    int count = 0;
    for (long long i = 1; i <= sqrt(num); i++) {

        if (num % i == 0) {
            count += 2; 
            if (i * i == num) {
                count--; 
            }
        }

        if (count > 500)  return count;
        
    }
    return count;
}

int main() {
    long long i = 1;
    
    while (true) {

        long long TriangleNum = i * (i + 1) / 2;

        int divisors = countDivisors(TriangleNum);

        if (divisors > 500) {
            std::cout << "TriangleNum = " << TriangleNum << ", count = " << divisors << std::endl;
            break;
        }

        i++;
    }

    return 0;
}
