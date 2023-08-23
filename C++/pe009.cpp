#include <iostream>

int main() {

for (int i = 1; i < 1000; i++){
    for (int j = i  + 1; j < 1000; j++){
        for (int k = j + 1; k < 1000; k++){
                if(i*i + j*j == k*k){
                    if (i + j + k == 1000)
                    {
                       std::cout << i * j * k  << std::endl;
                       return 0;
                    }
                }
        }
    }
}

    return 0;
}