#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main() {
    float a, b, c, discriminant, root1, root2, imgPart;

    printf("\nEnter Coefficients a, b and c: ");
    scanf("%f%f%f", &a, &b, &c);

    if (a == 0) {
        printf("\nNot a quadratic equation.");
        return 0;
    }

    discriminant = b * b - 4 * a * c;
    printf("\nDiscriminant: %f", discriminant);

    discriminant > 0 ? (
        root1 = (-b + sqrt(discriminant)) / (2*a),
        root2 = (-b - sqrt(discriminant)) / (2*a),
        printf("\nRoots are real and distinct: %f and %f", root1, root2)
    ) : (
        discriminant == 0 ? (
            root1 = -b / (2*a),
            printf("\nRoots are real and equal: %f and %f", root1, root1)
        ) : (
            root1 = -b / (2*a),
            imgPart = sqrt(-discriminant) / (2*a),
            printf("\nRoots are complex: %f + i%f and %f - i%f", root1, imgPart, root1, imgPart)
        )
    );

    return 0;
}