#include<stdio.h>

int main() {
    float a, b, c, d, e, f, result, temp1, temp2, temp3;
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

    temp1 = a + b;
    temp2 = temp1 * c;
    temp3 = temp2 / d;
    result = temp3 * (e - f);

    printf("The value of the expression is: %f\n", result);
    return 0;
}