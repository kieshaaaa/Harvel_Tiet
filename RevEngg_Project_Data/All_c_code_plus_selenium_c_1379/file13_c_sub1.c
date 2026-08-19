#include <stdio.h>

int main() {
    int upperLimit, isPrime, num, div;
    
    printf("\nEnter Limit(N) upto which you want: ");
    scanf("%d", &upperLimit);
    printf("\nPRIME NUMBERS less than [ %d ] are: \n\n", upperLimit);
    
    for (num = 2; num < upperLimit; num++) {
        isPrime = 1; // Assume number is prime
        for (div = 2; div * div <= num; div++) {
            if (num % div == 0) {
                isPrime = 0; // Number is not prime
                break;
            }
        }
        if (isPrime) {
            printf(" %d ", num);
        }
    }
    
    printf("\n");
    return 0;
}