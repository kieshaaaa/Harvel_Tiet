#include <stdio.h>
#include <math.h>

int main() {
    float a, b, c, discriminant;

    printf("\nEnter Coefficients a, b and c: ");
    scanf("%f%f%f", &a, &b, &c);

    if (a == 0) {
        printf("\nNot a quadratic equation.");
        return 0;
    }

    discriminant = b*b - 4*a*c;
    printf("\nDiscriminant: %f", discriminant);

    if (discriminant > 0) {
        printf("\nRoots are real and distinct: %f and %f",
               (-b + sqrt(discriminant)) / (2*a),
               (-b - sqrt(discriminant)) / (2*a));
    } else if (discriminant == 0) {
        printf("\nRoots are real and equal: %f and %f",
               -b / (2*a), -b / (2*a));
    } else {
        printf("\nRoots are complex: %f + i%f and %f - i%f",
               -b / (2*a), sqrt(-discriminant) / (2*a),
               -b / (2*a), sqrt(-discriminant) / (2*a));
    }

    return 0;
}