#include <stdio.h>

int main() {
    int num1, num2, i, j, primeCount = 0;
    
    printf("Enter the value of Number1 and Number2: ");
    scanf("%d %d", &num1, &num2);

    i = num1;
    while(i <= num2) {
        if(i < 2) {
            i++;
            continue;
        }
        int isPrime = 1;
        j = 2;
        while(j*j <= i) {
            if(i % j == 0) {
                isPrime = 0;
                break;
            }
            j++;
        }
        if(isPrime) {
            printf("%d\n", i);
            primeCount++;
        }
        i++;
    }

    printf("Number of primes between %d & %d = %d\n", num1, num2, primeCount);
    return 0;
}