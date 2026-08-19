#include <stdio.h>

// // Main Function Start
int main()
{
    float a, b, c, d, sumReal, sumImag;
    printf("\nEnter First Complex Number (Real Part and Imaginary Part) => ");
    scanf("%f%f", &a, &b);
    printf("\nEnter Second Complex Number (Real Part and Imaginary Part) => ");
    scanf("%f%f", &c, &d);
    sumReal = a + c;
    sumImag = b + d;
    printf("\nSum is  (%f and  %f )", sumReal, sumImag);

    return 0;
}