#include <stdio.h>

int main() {
    float coefficients[100], x, result = 0;
    int degree, index;

    printf("Enter degree of polynomial: ");
    scanf("%d", &degree);

    for (index = 0; index <= degree; index++) {
        printf("Enter coefficient for [X^%d]: ", index);
        scanf("%f", &coefficients[degree - index]);
    }

    printf("Enter the value of X: ");
    scanf("%f", &x);

    for (index = degree; index > 0; index--) {
        result = (result + coefficients[index]) * x;
    }
    result += coefficients[0];

    printf("Polynomial value: %f\n", result);

    return 0;
}