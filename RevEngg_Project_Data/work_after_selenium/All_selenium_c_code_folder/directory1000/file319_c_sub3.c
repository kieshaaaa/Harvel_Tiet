#include<stdio.h>

int main() {
    float a, b, c, d, e, f, result;
    printf("Enter six numbers to calculate ((a + b) * c / d) * (e - f):\n");

    printf("a: ");
    scanf("%f", &a);

    printf("b: ");
    scanf("%f", &b);

    printf("c: ");
    scanf("%f", &c);

    printf("d (non-zero): ");
    scanf("%f", &d);

    printf("e: ");
    scanf("%f", &e);

    printf("f: ");
    scanf("%f", &f);

    if(d == 0) {
        printf("Division by zero is not allowed.\n");
        return -1;
    }

    result = ((a + b) * c / d) * (e - f);

    printf("Result: %f\n", result);
    return 0;
}