#include <stdio.h>

int main() {
    int upperLimit, num, div;
    
    printf("\nEnter Limit(N) upto which you want: ");
    scanf("%d", &upperLimit);
    printf("\nPRIME NUMBERS less than [ %d ] are: \n\n", upperLimit);
    
    if (upperLimit >= 2) printf(" 2 ");
    for (num = 3; num < upperLimit; num += 2) {
        for (div = 3; div * div <= num; div += 2) {
            if (num % div == 0) {
                goto not_prime; // Use goto for an early exit from the loop
            }
        }
        printf(" %d ", num); // If loop completes, num is prime
        not_prime: ; // Label for goto
    }
    
    printf("\n");
    return 0;
}