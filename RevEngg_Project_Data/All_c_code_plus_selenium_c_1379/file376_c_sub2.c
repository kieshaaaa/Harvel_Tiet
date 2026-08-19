#include <stdio.h>

int main() {
    int number, A, B;
    
    printf("Enter any integer number : ");
    scanf("%d", &number);
    
    printf("Enter first divisor : ");
    scanf("%d", &A);
    
    printf("Enter second divisor : ");
    scanf("%d", &B);
    
    if(number % A != 0 || number % B != 0) goto not_divisible;
    
    printf("%d is divisible by %d and %d\n", number, A, B);
    goto end;
    
not_divisible:
    printf("%d is not divisible by %d and %d\n", number, A, B);
    
end:
    return 0;
}