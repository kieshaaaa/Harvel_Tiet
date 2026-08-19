#include <stdio.h>

int main() {
    int num1, num2, totalSum;
    float average;

    printf("Enter the first number: ");
    scanf("%d", &num1);
    printf("Enter the second number: ");
    scanf("%d", &num2);

    totalSum = num1 + num2;
    average = totalSum / 2.0;

    printf("Sum of %d and %d is = %d\n", num1, num2, totalSum);
    printf("Average of %d and %d is = %.2f\n", num1, num2, average);

    return 0;
}