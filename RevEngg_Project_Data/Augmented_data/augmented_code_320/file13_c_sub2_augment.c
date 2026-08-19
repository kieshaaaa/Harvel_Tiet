#include <stdio.h>

int main() {
    int upperLimit, number, divisor;
    
    printf("\nEnter Limit(N) upto which you want: ");
    scanf("%d", &upperLimit);
    printf("\nPRIME NUMBERS less than [ %d ] are: \n\n", upperLimit);
    
    if (upperLimit >= 2) printf(" 2 ");
    number = 3;
    while (number < upperLimit) {
        divisor = 3;
        while (divisor * divisor <= number) {
            if (number % divisor == 0) {
                goto not_prime; 
            }
            divisor += 2;
        }
        printf(" %d ", number); 
        not_prime: ; 
        number += 2;
    }
    
    printf("\n");
    return 0;
}