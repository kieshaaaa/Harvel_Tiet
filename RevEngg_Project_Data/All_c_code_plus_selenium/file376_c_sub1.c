#include <stdio.h>

int main() {
    int number, A, B;
    
    printf("Enter any integer number : ");
    scanf("%d", &number);
    
    printf("Enter first divisor : ");
    scanf("%d", &A);
    
    printf("Enter second divisor : ");
    scanf("%d", &B);
    
    int divisibleByA = number % A == 0;
    int divisibleByB = number % B == 0;
    
    if(divisibleByA && divisibleByB) {
        printf("%d is divisible by %d and %d\n", number, A, B);
    } else {
        printf("%d is not divisible by %d and %d\n", number, A, B);
    }
    
    return 0;
}