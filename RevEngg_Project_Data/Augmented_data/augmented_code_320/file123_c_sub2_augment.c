#include <stdio.h>

int main() {
    float num1, num2, num3, num4, outcome;

    printf("Enter four numbers (num1, num2, num3, num4): ");
    scanf("%f %f %f %f", &num1, &num2, &num3, &num4);

    if((num3 != 0) && (num4 != 0)) {
        outcome = (num1 * num2) / (num3 * num4);
        printf("The result of the operation (num1 * num2) / (num3 * num4) is: %.2f\n", outcome);
    } else {
        printf("Error: Division by zero.\n");
    }

    return 0;
}