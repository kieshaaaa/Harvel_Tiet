#include <stdio.h>

int main() {
    float num1, num2, num3, num4, output;

    printf("Enter four numbers (num1, num2, num3, num4): ");
    scanf("%f %f %f %f", &num1, &num2, &num3, &num4);

    if(num3 == 0 || num4 == 0) {
        printf("Error: Division by zero.\n");
    } else {
        output = (num1 * num2) / (num3 * num4);
        printf("The result of the operation (num1 * num2) / (num3 * num4) is: %.2f\n", output);
    }

    return 0;
}