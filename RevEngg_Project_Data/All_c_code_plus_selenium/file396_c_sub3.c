#include<stdio.h>

void PrintPrimeFactors(int n) {
    // Deal with even numbers first
    while (n % 2 == 0) {
        printf("%d ", 2);
        n /= 2;
    }
    
    // Now deal with odd numbers
    for (int i = 3; i <= n; i += 2) {
        while (n % i == 0) {
            printf("%d ", i);
            n /= i;
        }
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