#include <iostream>
#include <string>
#include <algorithm> 

int main() {

    long long max = 0;

for (int i = 999; i > 100; i--){
    for (int j = 999; j > 100; j--){
        long long num = i * j;
        std::string str1 = std::to_string(num);
        std::string str2 = str1;
        std::reverse(str1.begin(), str1.end());

        if(str1 == str2 && num > max) max = num;
    }
}
    std::cout << max << "\n";
    return 0;


    return 0;
}