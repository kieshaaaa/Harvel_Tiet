#include <stdio.h>

int main() {
    float num1, num2, num3, num4, num5, output;

    printf("Enter five numbers (num1, num2, num3, num4, num5): ");
    scanf("%f %f %f %f %f", &num1, &num2, &num3, &num4, &num5);

    if(num5 == 0) {
        printf("Error: Division by zero is not allowed.\n");
        return 1; 
    }

    output = num1 + num2 * num3 - num4 / num5;

    printf("The result of the operation num1 + num2 * num3 - num4 / num5 is: %.2f\n", output);

    return 0;
}