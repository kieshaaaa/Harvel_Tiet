#include <stdio.h>

int main() {
    int n, nthOdd;
    
    printf("Enter n to find the nth odd number: ");
    scanf("%d", &n);
    
    nthOdd = 1 + (n - 1) * 2;
    
    printf("The ");
    printf("%d", n);
    printf("th odd number is: ");
    printf("%d\n", nthOdd);
    
    return 0;
}