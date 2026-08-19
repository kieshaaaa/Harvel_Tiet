#include <stdio.h>

int main() {
    float coefs[100], valX, polyVal = 0;
    int deg, j;

    printf("Degree of polynomial X: ");
    scanf("%d", &deg);

    for (j = deg; j >= 0; j--) {
        printf("Coefficient [X^%d]: ", j);
        scanf("%f", &coefs[deg - j]);
    }

    printf("Value of X: ");
    scanf("%f", &valX);

    for (j = 0; j < deg; j++) {
        polyVal = (polyVal + coefs[j]) * valX;
    }
    polyVal += coefs[deg];

    printf("Polynomial value = %f\n", polyVal);

    return 0;
}