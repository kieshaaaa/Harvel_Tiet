#include <stdio.h>

int main() {
    int number, A, B, isDivisible;
    
    printf("Enter any integer number : ");
    scanf("%d", &number);
    
    printf("Enter first divisor : ");
    scanf("%d", &A);
    
    printf("Enter second divisor : ");
    scanf("%d", &B);
    
    isDivisible = (number % A == 0) && (number % B == 0) ? 1 : 0;
    
    if(isDivisible == 1) {
        printf("%d is divisible by %d and %d\n", number, A, B);
    } else {
        printf("%d is not divisible by %d and %d\n", number, A, B);
    }
    
    return 0;
}