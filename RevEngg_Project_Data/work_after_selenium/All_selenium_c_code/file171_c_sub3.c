#include <stdio.h>
#include <math.h>

int main() {
    float a, b, c;
    float discriminant, root1Real, root2Real, imaginary;

    printf("Enter the value of a: ");
    scanf("%f", &a);

    printf("Enter the value of b: ");
    scanf("%f", &b);

    printf("Enter the value of c: ");
    scanf("%f", &c);

    discriminant = b*b - 4*a*c;

    root1Real = root2Real = -b / (2*a);
    imaginary = sqrt(fabs(discriminant)) / (2*a);

    discriminant > 0 ? printf("The roots are real: %f and %f\n", root1Real + imaginary, root2Real - imaginary) : 
                       (discriminant == 0 ? printf("There is one real root: %f\n", root1Real) : 
                       printf("The roots are complex: %f + %fi and %f - %fi\n", root1Real, imaginary, root2Real, imaginary));

    return 0;
}