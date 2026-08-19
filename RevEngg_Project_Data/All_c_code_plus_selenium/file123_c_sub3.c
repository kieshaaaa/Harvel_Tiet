#include <stdio.h>

int main() {
    float a, b, c, d, result;

    printf("Enter four numbers (a, b, c, d): ");
    scanf("%f %f %f %f", &a, &b, &c, &d);

    if(c == 0 || d == 0) {
        printf("Error: Division by zero.\n");
    } else {
        result = (a * b) / (c * d);
        printf("The result of the operation (a * b) / (c * d) is: %.2f\n", result);
    }

    return 0;
}