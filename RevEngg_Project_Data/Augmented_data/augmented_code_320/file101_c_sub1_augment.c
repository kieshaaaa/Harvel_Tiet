#include <stdio.h>

int main() {
    float num1, num2, num3, num4, output, sum1, sum2;

    printf("Enter four numbers (a, b, c, d): ");
    scanf("%f %f %f %f", &num1, &num2, &num3, &num4);

    sum1 = num1 + num2;
    sum2 = num3 + num4;

    if(sum2 == 0) {
        printf("Division by zero error.\n");
        return -1;
    }

    output = sum1 / sum2;
    printf("The result is: %.2f\n", output);

    return 0;
}