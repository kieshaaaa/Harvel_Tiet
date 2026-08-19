#include <stdio.h>

int main() {
    int num1, num2;
    int sum;
    float average;

    printf("Enter the first number: ");
    scanf("%d", &num1);
    printf("Enter the second number: ");
    scanf("%d", &num2);

    sum = 0;
    sum += num1;
    sum += num2;

    average = sum / 2.0f;

    printf("Sum of %d and %d is = %d\n", num1, num2, sum);
    printf("Average of %d and %d is = %.2f\n", num1, num2, average);

    return 0;
}