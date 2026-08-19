#include <stdio.h>

int main() {
    float a, b, c, d, result, denom;

    printf("Enter four numbers (a, b, c, d): ");
    scanf("%f %f %f %f", &a, &b, &c, &d);

    denom = c * d;
    if(denom != 0) {
        result = (a * b) / denom;
        printf("The result of the operation (a * b) / (c * d) is: %.2f\n", result);
    } else {
        printf("Error: Division by zero.\n");
    }

    return 0;
}