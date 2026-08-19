#include <stdio.h>

int main() {
    int upperLimit, isPrime, number, divisor;
    
    printf("\nEnter Limit(N) upto which you want: ");
    scanf("%d", &upperLimit);
    printf("\nPRIME NUMBERS less than [ %d ] are: \n\n", upperLimit);
    
    number = 2;
    while (number < upperLimit) {
        isPrime = 1; 
        divisor = 2;
        while (divisor * divisor <= number) {
            if (number % divisor == 0) {
                isPrime = 0; 
                break;
            }
            divisor++;
        }
        if (isPrime) {
            printf(" %d ", number);
        }
        number++;
    }
    
    printf("\n");
    return 0;
}