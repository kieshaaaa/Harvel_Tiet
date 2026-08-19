#include <stdio.h>

int main() {
    float num1, num2, num3, num4, finalResult;

    printf("Enter four numbers (a, b, c, d): ");
    scanf("%f %f %f %f", &num1, &num2, &num3, &num4);

    finalResult = (num1 + num2) * (num3 + num4);

    printf("The result of the operation (a + b) * (c + d) is: %.2f\n", finalResult);

    return 0;
}