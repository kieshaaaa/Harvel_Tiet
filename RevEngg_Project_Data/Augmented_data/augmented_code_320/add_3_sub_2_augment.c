#include <stdio.h>

int main() {
    float num1, num2, num3, num4, num5, sum;

    printf("Enter five numbers separated by spaces (a b c d e): ");
    scanf("%f %f %f %f %f", &num1, &num2, &num3, &num4, &num5);

    sum = num1 + num2 + num3 - num4 - num5;

    printf("The result of adding a, b, c, d, and e is: %.2f\n", sum);

    return 0;
}