#include <iostream>
#include <cmath>
#include <gmp.h>
#include <gmpxx.h>


mpz_class solvePellEquation(int n) {

    if (std::sqrt(n) == static_cast<int>(std::sqrt(n))) {
        return 0; 
    }

    mpz_class a = static_cast<unsigned long>(std::sqrt(n));
    mpz_class m = 0;
    mpz_class d = 1;
    mpz_class a0 = a;

    mpz_class num = a;
    mpz_class den = 1;
    mpz_class minNum = num;
    mpz_class numPrev = 1;
    mpz_class denPrev = 0;

    while (true) {

        m = d * a - m;
        d = (n - m * m) / d;
        a = (a0 + m) / d;
        
        mpz_class nextNum = a * num + numPrev;
        mpz_class nextDen = a * den + denPrev;
        
        numPrev = num;
        denPrev = den;

        num = nextNum;
        den = nextDen;

        if (num * num - n * den * den == 1) {
            return num;
        }
    }

    return 0;
}

int main() {
    mpz_class xmax = 0, dmax = 0;

    for (int n = 2; n <= 1000; ++n) {

        mpz_class result = solvePellEquation(n);

        if (result > xmax) {
            xmax = result;
            dmax = n;
        }
    }

    std::cout << "dmax = " << dmax << std::endl;

    return 0;
}
// g++ -o pe066 pe066.cpp -lgmp -lgmpxx