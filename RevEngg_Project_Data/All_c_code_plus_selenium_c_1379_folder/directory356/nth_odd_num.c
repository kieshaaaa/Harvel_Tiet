#include <stdio.h>

int main() {
    int n, nthOdd;
    
    printf("Enter n to find the nth odd number: ");
    scanf("%d", &n);
    
    // Calculate the nth odd number
    nthOdd = 2 * n - 1;
    
    printf("The %dth odd number is: %d\n", n, nthOdd);
    
    return 0;
}
