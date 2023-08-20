#include <iostream>


bool IsEvenlyDivisible(unsigned long long num){
    for (int i = 1; i <= 20; i++){
        if (num % i  != 0){
            return false; 
        }
    }

    return true;
}
int main() {

unsigned long long num = 2;

while (true){
    if (IsEvenlyDivisible(num) == true){
      std::cout << num << std::endl;
      return 0;
    }
   num++;
}

std::cout << num << std::endl;
    return 0;
}