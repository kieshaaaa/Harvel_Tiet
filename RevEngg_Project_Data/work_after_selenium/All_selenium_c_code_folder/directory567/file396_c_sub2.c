#include<stdio.h>

void PrintPrimeFactors(int n) {
    // Print the number of 2s that divide n
    while (n % 2 == 0) {
        printf("%d ", 2);
        n = n / 2;
    }
    
    // n must be odd at this point, so a skip of 2 (i = i + 2) can be used
    for (int i = 3; i * i <= n; i = i + 2) {
        // While i divides n, print i and divide n
        while (n % i == 0) {
            printf("%d ", i);
            n = n / i;
        }
    }
    
    // This condition is to handle the case when n is a prime number greater than 2
    if (n > 2) {
        printf("%d ", n);
    }
}

int main() {
    int num;
    printf("Enter a number: ");
    scanf("%d", &num);
    printf("Prime factors: ");
    PrintPrimeFactors(num);
    printf("\n");
    return 0;
}