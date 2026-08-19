// // Header Files
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

// // Main Function Start
int main()
{
    float a, b, c, disc, r1, r2, imaginaryPart;
    printf("\nEnter Coefficients a,b and c => ");
    scanf("%f%f%f", &a, &b, &c);

    if (!a)
    {
        printf("\nNot An Quadratic Equation...");
        exit(0);
    }

    disc = b * b - 4 * a * c;

    printf("\nDiscriminant => %f", disc);

    switch (disc > 0)
    {

    case 1:
        printf("\nRoots Are Real And Distinct...");
        r1 = (-b + sqrt(disc)) / (2 * a);
        r2 = (-b - sqrt(disc)) / (2 * a);
        printf("\nRoots Are %f and %f ", r1, r2);
        break;

    case 0:

        switch (disc < 0)
        {
        case 0:
            printf("\nRoots Are Real And Equal...");
            r1 = r2 = -b / (2 * a);
            printf("\nRoots Are %f and %f ", r1, r1);
            break;

        case 1:
            printf("\nRoots Are Imaginary...");
            r1 = -b / (2 * a);
            imaginaryPart = sqrt(-disc) / (2 * a);
            printf("\nRoot Are %f + i( %f ) and %f - i( %f )", r1, imaginaryPart, r1, imaginaryPart);
        }
    }


    return 0;
}
// // Main Function End

