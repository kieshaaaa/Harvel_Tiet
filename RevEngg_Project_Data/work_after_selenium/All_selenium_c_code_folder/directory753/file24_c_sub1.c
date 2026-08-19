#include <stdio.h>

int main() {
    float a, b, c, d, e, average;

    printf("Enter five numbers separated by spaces (a b c d e): ");
    scanf("%f %f %f %f %f", &a, &b, &c, &d, &e);

    average = (a + b + c + d + e) / 5;

    printf("The average of a, b, c, d, and e is: %.2f\n", average);

    return 0;
}