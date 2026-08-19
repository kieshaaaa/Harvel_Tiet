#include <stdio.h>

int main() {
    int upperLimit, num, div, isPrime;
    
    printf("\nEnter Limit(N) upto which you want: ");
    scanf("%d", &upperLimit);
    printf("\nPRIME NUMBERS less than [ %d ] are: \n\n", upperLimit);
    
    if (upperLimit >= 2) printf(" 2 ");
    for (num = 3; num < upperLimit; num += 2) {
        isPrime = 1;
        for (div = 3; div * div <= num; div += 2) {
            if (num % div == 0) {
                isPrime = 0;
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