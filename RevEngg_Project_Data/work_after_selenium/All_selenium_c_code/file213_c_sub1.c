#include <stdio.h>

int main() {
    float a, b, c, d, e, intermediateResult, finalResult;

    printf("Enter five numbers separated by spaces (a b c d e): ");
    scanf("%f %f %f %f %f", &a, &b, &c, &d, &e);

    intermediateResult = -e;
    finalResult = a + b + c + d + intermediateResult;

    printf("The result is: %.2f\n", finalResult);

    return 0;
}