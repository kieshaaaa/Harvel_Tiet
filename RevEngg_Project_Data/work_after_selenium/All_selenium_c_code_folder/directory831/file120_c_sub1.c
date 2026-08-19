#include<stdio.h>

int main() {
    float a = 5.0;
    float b = 10.0;
    float sum = a + b;
    float diff = a - b;
    float product = a * b;
    float quotient = a / b;

    printf("Sum of a and b = %.2f\n", sum);
    printf("Difference between a and b = %.2f\n", diff);
    printf("Product of a and b = %.2f\n", product);
    printf("Quotient of a divided by b = %.2f\n", quotient);

    return 0;
}