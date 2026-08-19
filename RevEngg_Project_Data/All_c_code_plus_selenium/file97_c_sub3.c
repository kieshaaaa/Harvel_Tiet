#include <stdio.h>

int main() {
    int value;
    int digitSum = 0, digitProduct = 1;

    printf("\nEnter any integer number :: ");
    scanf("%d", &value);

    for (int originalValue = value; originalValue > 0; originalValue /= 10) {
        int digit = originalValue % 10;
        digitSum += digit;
        digitProduct *= digit;
    }

    printf("\nSUM of Digits of Number [ %d ] : [ %d ].\n", value, digitSum);
    printf("\nPRODUCT of digits of Number [ %d ] : [ %d ].\n", value, digitProduct);

    return 0;
}