#include<stdio.h>

void PrintPrimeFactors(int n) {
    int i = 2;
    while (n != 1) {
        while (n % i == 0) {
            printf("%d ", i);
            n = n / i;
        }
        i++;
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