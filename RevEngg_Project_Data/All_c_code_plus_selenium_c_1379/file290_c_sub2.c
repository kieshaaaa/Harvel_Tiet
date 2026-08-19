#include <stdio.h>

int main() {
    int num1, num2, result;
    float mean;

    printf("Input two numbers (comma separated): ");
    scanf("%d,%d", &num1, &num2);

    result = num1 + num2;
    mean = (float)result / 2;

    printf("Sum = %d\n", result);
    printf("Average = %f\n", mean);

    return 0;
}