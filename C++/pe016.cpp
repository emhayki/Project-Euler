#include <iostream>
#include <gmpxx.h>


int main() {
   
    mpz_class Num = 2;

for (int i = 1; i < 15; i++)
{
    Num *= 2;
}



mpz_class Sum = 0;

while (Num >= 1)
{
    Sum += Num%10;
    Num /=10; 

}

std::cout << Sum << std::endl;

     

    return 0;
}

