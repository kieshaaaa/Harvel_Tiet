#include <stdio.h>

int main() {
    float a, b, c, d, result;

    printf("Enter four numbers (a, b, c, d): ");
    scanf("%f %f %f %f", &a, &b, &c, &d);

    result = ((a + b + c + d) / 4) - d;

    printf("The result of averaging a, b, c, d then subtracting d is: %.2f\n", result);

    return 0;
}