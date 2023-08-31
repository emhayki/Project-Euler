#include <iostream>
#include <cmath>


int main() {
   
    

unsigned long long N = 13;
unsigned long long MaxCount = 0;
unsigned long long MaxNum = 0;

for (long long i = 0; i < 1000000; i++)
{

 unsigned long long n = N;
unsigned long long count = 0;
   while (n > 1)
    {
        if (n % 2 == 0)
        {
            n = n / 2;
        }else{
            n = 3*n + 1;
        }

    count++;
    }

    if (count > MaxCount){
        MaxCount = count;
        MaxNum = N;
    }

    N++;

}


std::cout << "MaxNum = " << MaxNum << std::endl;

    
     

    return 0;
}
