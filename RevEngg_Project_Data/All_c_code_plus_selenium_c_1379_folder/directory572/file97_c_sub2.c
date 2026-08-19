#include <stdio.h>

int main() {
    int num;
    int sum = 0, product = 1;

    printf("\nEnter any integer number :: ");
    scanf("%d", &num);

    for (; num > 0; num /= 10) {
        int digit = num % 10;
        sum = sum + digit;
        product = product * digit;
    }

    printf("\nSUM of Digits : [ %d ].\n", sum);
    printf("\nPRODUCT of digits : [ %d ].\n", product);

    return 0;
}