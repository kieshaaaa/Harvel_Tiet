#include <stdio.h>

int main() {
    int number1, number2, total;
    float average;

    printf("Enter two numbers separated by space: ");
    scanf("%d %d", &number1, &number2);

    total = number1 + number2;
    average = total / 2.0;

    printf("Sum = %d\n", total);
    printf("Average = %f\n", average);

    return 0;
}