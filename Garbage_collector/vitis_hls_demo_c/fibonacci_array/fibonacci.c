#include <stdio.h>
#include <stdint.h>
#include "fibonacci.h"

int fibonacci(int n,uint32_t output[64]) {

	uint32_t myArray[6];
    int first = 0, second = 1, next, i;

    printf("Fibonacci Series up to %d terms:/n", n);
    
    for (i = 0; i < n; i++) {
	    output[i] = first;
	    myArray[i] = first;
        printf(" %d ", first);
        next = first + second;
        first = second;
        second = next;
   }
   return output[n];
}
