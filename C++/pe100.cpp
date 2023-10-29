
#include <iostream>
#include <cmath>

int main() {
    long long x = 15;
    long long n = 21;
    
    while (true) {
        long long new_x = 3 * x + 2 * n - 2;
        long long new_n = 4 * x + 3 * n - 3;

        if (new_x > 1000000000000LL) {
             std::cout << x << std::endl;
            break;
        }

        x = new_x;
        n = new_n;
    }

    return 0;
}