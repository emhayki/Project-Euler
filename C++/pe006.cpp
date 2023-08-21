#include <iostream>

int main() {

unsigned long long int sum1 = 0;
unsigned long long int sum2 = 0;

for (int i = 1; i <= 100; i++){
    sum1 = sum1 + i*i;
    sum2 = sum2 + i;
}

std::cout << sum2*sum2 - sum1 << "\n";


    return 0;
}