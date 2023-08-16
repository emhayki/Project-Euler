#include <iostream>
#include <vector>
#include <algorithm>
#include <cmath>
#include <set>
#include <numeric>

int main() {
    int limit = 1500000;
    std::vector<int> counts(limit + 1, 0);  

    for (int m = 2; m * (m + 1) <= limit; m++) {
        for (int n = 1; n < m; n++) {
            if ((m + n) % 2 == 1 && std::__gcd(m, n) == 1) {
                int a = m * m - n * n;
                int b = 2 * m * n;
                int c = m * m + n * n;
                int perimeter = a + b + c;

                for (int k = 1; k * perimeter <= limit; k++) {
                    counts[k * perimeter]++;
                }
            }
        }
    }

    int count = 0;
    for (int i = 0; i <= limit; i++) {
        if (counts[i] == 1) {
            count++;
        }
    }

    std::cout << count << std::endl;

    return 0;
}
