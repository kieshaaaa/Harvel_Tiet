#include<stdio.h>

int main() {
    float a, b, c, d, e, f, result;
    printf("Enter the value of a: ");
    scanf("%f", &a);

    printf("Enter the value of b: ");
    scanf("%f", &b);

    printf("Enter the value of c: ");
    scanf("%f", &c);

    printf("Enter the value of d: ");
    scanf("%f", &d);

    printf("Enter the value of e: ");
    scanf("%f", &e);

    printf("Enter the value of f: ");
    scanf("%f", &f);

    result = ((a + b) * c / d) * (e - f);

    printf("The value of the expression is: %f\n", result);
    return 0;
}