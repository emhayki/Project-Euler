#include <iostream>
#include <cmath>
#include <gmpxx.h>
#include <iomanip>

int main() {


mpz_class N = 500000000, Sum = 0;
mpf_class a, b, c, A, perimeter;

for (mpz_class i = 1; i < N; i++)
{
    a = i;
    b = i; 
    c = i + 1;

    A = sqrt((a + b + c)*(a + b - c)*(b + c - a)*(c + a - b)/16.) * 1.0;

    perimeter = a + b + c;

    if(A == static_cast<mpz_class>(A) && A > 0 && perimeter <= N) Sum = Sum + perimeter;
     
    c = i - 1;
    A = sqrt((a + b + c)*(a + b - c)*(b + c - a)*(c + a - b)/16.) * 1.0;

    perimeter = a + b + c;

    if(A == static_cast<mpz_class>(A) && A > 0 && perimeter <= N) Sum = Sum + perimeter;
    
    if(perimeter > N) break;

}
std::cout << std::fixed << std::setprecision(0);
std::cout << Sum << std::endl;

}
