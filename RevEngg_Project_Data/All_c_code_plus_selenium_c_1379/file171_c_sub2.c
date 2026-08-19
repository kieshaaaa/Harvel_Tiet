#include <stdio.h>
#include <math.h>

int main() {
    float a, b, c, discriminant, realPart, imagPart;

    printf("Enter the value of a: ");
    scanf("%f", &a);

    printf("Enter the value of b: ");
    scanf("%f", &b);

    printf("Enter the value of c: ");
    scanf("%f", &c);

    discriminant = b*b - 4*a*c;
    realPart = -b / (2*a);

    if (discriminant >= 0) {
        imagPart = sqrt(fabs(discriminant)) / (2*a);
        printf("The value of root1 is: %f\n", realPart + imagPart);
        printf("The value of root2 is: %f\n", realPart - imagPart);
    } else {
        imagPart = sqrt(-discriminant) / (2*a);
        printf("The value of root1 is: %f + %fi\n", realPart, imagPart);
        printf("The value of root2 is: %f - %fi\n", realPart, imagPart);
    }

    return 0;
}