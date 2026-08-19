#include <stdio.h>

int main() {
    float num1, num2, num3, num4, outcome, divisor;

    printf("Enter four numbers (a, b, c, d): ");
    scanf("%f %f %f %f", &num1, &num2, &num3, &num4);

    divisor = num3 * num4;
    if(divisor != 0) {
        outcome = (num1 * num2) / divisor;
        printf("The result of the operation (a * b) / (c * d) is: %.2f\n", outcome);
    } else {
        printf("Error: Division by zero.\n");
    }

    return 0;
}