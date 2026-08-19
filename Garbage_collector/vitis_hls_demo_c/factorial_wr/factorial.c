#include "factorial.h"

int factorial(int n) {
    int result = 1;
    
    // Calculate factorial iteratively
    while (n > 1) {
        result *= n;
        n--;
    }
    
    return result;
}
