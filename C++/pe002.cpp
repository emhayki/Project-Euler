#include <iostream>
#include <vector>
#include <iomanip>

int main() {
 
double sum = 0; int i = 2;
std::vector<long> FibonacciSequence;

FibonacciSequence.push_back(0);
FibonacciSequence.push_back(1);

while (true){
    FibonacciSequence.push_back(FibonacciSequence[i-1] + FibonacciSequence[i-2]);
    if (FibonacciSequence[i] > 4000000) break;
    if(FibonacciSequence[i] % 2 == 0) sum += FibonacciSequence[i];
    i++;
}

std::cout << std::fixed << std::setprecision(0) << sum << std::endl;


    return 0;
}