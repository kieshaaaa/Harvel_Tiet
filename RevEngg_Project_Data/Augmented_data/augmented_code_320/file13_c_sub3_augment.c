#include <stdio.h>

int main() {
    int upperLimit, number, divisor, isPrime;
    
    printf("\nEnter Limit(N) upto which you want: ");
    scanf("%d", &upperLimit);
    printf("\nPRIME NUMBERS less than [ %d ] are: \n\n", upperLimit);
    
    if (upperLimit >= 2) printf(" 2 ");
    number = 3;
    while (number < upperLimit) {
        isPrime = 1;
        divisor = 3;
        while (divisor * divisor <= number) {
            if (number % divisor == 0) {
                isPrime = 0;
                break;
            }
            divisor += 2;
        }
        if (isPrime) {
            printf(" %d ", number);
        }
        number += 2;
    }
    
    printf("\n");
    return 0;
}