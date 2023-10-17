#include <iostream>
#include <vector>
#include <cmath>

bool isPrime(int n) {
    if (n <= 1) return false;
    if (n <= 3) return true;
    if (n % 2 == 0 || n % 3 == 0) return false;

    for (int i = 5; i * i <= n; i += 6) {
        if (n % i == 0 || n % (i + 2) == 0) return false;
    }
    return true;
}

bool isConcatPrime(int a, int b) {
    std::string s1 = std::to_string(a);
    std::string s2 = std::to_string(b);
    int num1 = std::stoi(s1 + s2);
    int num2 = std::stoi(s2 + s1);
    return isPrime(num1) && isPrime(num2);
}

int main() {
    const int limit = 10000;
    std::vector<int> primes;
    
    for (int i = 2; i <= limit; ++i) {
        if (isPrime(i)) {
            primes.push_back(i);
        }
    }

    for (size_t a = 0; a < primes.size(); ++a) {
        int A = primes[a];
        
        for (size_t b = a; b < primes.size(); ++b) {
            int B = primes[b];
            
            if (!isConcatPrime(A, B)) continue;

            for (size_t c = b; c < primes.size(); ++c) {
                int C = primes[c];
                
                if (isConcatPrime(A, C) && isConcatPrime(B, C)) {
                    for (size_t d = c; d < primes.size(); ++d) {
                        int D = primes[d];
                        
                        if (isConcatPrime(A, D) && isConcatPrime(B, D) && isConcatPrime(C, D)) {
                            for (size_t e = d; e < primes.size(); ++e) {
                                int E = primes[e];
                                
                                if (isConcatPrime(A, E) && isConcatPrime(B, E) &&
                                    isConcatPrime(C, E) && isConcatPrime(D, E)) {
                                    std::cout << "Found a set: " << A << " " << B << " " << C << " " << D << " " << E << std::endl;
                                    int Sum = A + B + C + D + E;
                                    std::cout << "Sum of the set: " << Sum << std::endl;
                                    return 0;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    return 0;
}
