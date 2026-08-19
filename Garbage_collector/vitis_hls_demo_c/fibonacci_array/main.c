#include <stdio.h>
#include <stdint.h>

#include "fibonacci.h"//include the header file


#define NUM 6
uint32_t output[64];

int main() {
    
    printf("Enter the number of terms: ");

    int out = fibonacci(NUM,output); //Call the Fibonacci function

    return 0;

}
