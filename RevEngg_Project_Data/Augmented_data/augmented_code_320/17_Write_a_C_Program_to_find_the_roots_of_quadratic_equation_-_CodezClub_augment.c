/* Source: https://www.codezclub.com/c-find-roots-of-quadratic-equation/ */
/*  C Program to find the roots of quadratic equation  */

#include<stdio.h>
#include<math.h>

int main()
{
    int a, b, c;
    float discriminant, denominator, root1, root2;
    printf("ENTER THE VALUE OF A :: ");
    scanf("%d", &a);
    printf("\nENTER THE VALUE OF B :: ");
    scanf("%d",&b);
    printf("\nENTER THE VALUE OF C :: ");
    scanf("%d",&c);

    discriminant=(b*b)-(4*a*c);
    denominator = 2 * a;
    if(discriminant > 0)
    {
    printf("\nTHE ROOTS ARE REAL ROOTS.");
    root1 = (-b/denominator)+(sqrt(discriminant)/denominator);
    root2 = (-b/denominator)-(sqrt(discriminant)/denominator);
    printf("\n\nTHE ROOTS ARE :: %f and %f\n", root1, root2);
    }
    else if(discriminant == 0)
    {
    printf("\nTHE ROOTS ARE REPEATED ROOTS.");
    root1 = -b/denominator;
    printf("\n\nTHE ROOT IS :: %f\n", root1);
    }
    else
    printf("\nTHE ROOTS ARE IMAGINARY ROOTS.\n");

    return 0;
}