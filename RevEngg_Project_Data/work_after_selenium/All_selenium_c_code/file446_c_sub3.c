#include <stdio.h>

int main() {
    float a, b, c, d, e, result;

    printf("Enter a: ");
    scanf("%f", &a);
    printf("Enter b: ");
    scanf("%f", &b);
    printf("Enter c: ");
    scanf("%f", &c);
    printf("Enter d: ");
    scanf("%f", &d);
    printf("Enter e: ");
    scanf("%f", &e);

    if(e == 0) {
        printf("Error: Division by zero is not allowed.\n");
        return 1;
    }

    result = a + b * c - d / e;

    printf("The result is: %.2f\n", result);

    return 0;
}