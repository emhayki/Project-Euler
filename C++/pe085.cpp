#include <iostream>
#include <cmath>

int main() {
    int target = 2000000;
    int closestArea = 0; 
    int result = 0;

    for (int m = 1; m < 2000; m++) {
        for (int n = 1; n < 2000; n++) {
            int num = (m * (m + 1) * n * (n + 1)) / 4; 

            if (closestArea == 0 || closestArea > std::abs(num - target)) {
                closestArea = std::abs(num - target);
                result = m * n;
            }
        }
    }

    std::cout << result << std::endl;

    return 0;
}
