#include <stdio.h>
#include <math.h>

int main() {
    float a, b, c;
    float discriminant, root1, root2;
    float realPart, imagPart;

    printf("Enter the value of a: ");
    scanf("%f", &a);

    printf("Enter the value of b: ");
    scanf("%f", &b);

    printf("Enter the value of c: ");
    scanf("%f", &c);

    discriminant = b*b - 4*a*c;

    if (discriminant > 0) {
        root1 = (-b + sqrt(discriminant)) / (2*a);
        root2 = (-b - sqrt(discriminant)) / (2*a);

        printf("The value of root1 is: %f\n", root1);
        printf("The value of root2 is: %f\n", root2);
    } else if (discriminant == 0) {
        root1 = root2 = -b / (2*a);

        printf("The value of root1 and root2 is: %f\n", root1);
    } else {
        realPart = -b / (2*a);
        imagPart = sqrt(-discriminant) / (2*a);

        printf("The value of root1 is: %f + %fi\n", realPart, imagPart);
        printf("The value of root2 is: %f - %fi\n", realPart, imagPart);
    }

    return 0;
}