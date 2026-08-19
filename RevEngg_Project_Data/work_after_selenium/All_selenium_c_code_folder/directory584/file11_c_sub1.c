#include <stdio.h>

int main() {
    int number1, number2, i, j, count = 0;
    
    printf("Enter the value of Number1 and Number2: ");
    scanf("%d %d", &number1, &number2);

    for(i = number1; i <= number2; i++) {
        if(i < 2) continue;
        int isPrime = 1;
        for(j = 2; j*j <= i; j++) {
            if(i % j == 0) {
                isPrime = 0;
                break;
            }
        }
        if(isPrime) {
            printf("%d\n", i);
            count++;
        }
    }

    printf("Number of primes between %d & %d = %d\n", number1, number2, count);
    return 0;
}