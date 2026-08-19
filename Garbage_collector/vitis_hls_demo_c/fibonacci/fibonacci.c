#include <stdio.h>
#include "fibonacci.h"

void fibonacci(int n) {
    int first = 0, second = 1, next, i;

    printf("Fibonacci Series up to %d terms:/n", n);
    
    for (i = 0; i < n; i++) {
        printf(" %d ", first);
        next = first + second;
        first = second;
        second = next;
   }
}
