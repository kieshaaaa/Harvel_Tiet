#include <stdio.h>


// // Main Function Start
int main()
{
    float real1, imag1, real2, imag2, realSum, imagSum;
    printf("\nEnter First Complex Number (Real Part and Imaginary Part) => ");
    scanf("%f%f", &real1, &imag1);
    printf("\nEnter Second Complex Number (Real Part and Imaginary Part) => ");
    scanf("%f%f", &real2, &imag2);
    realSum = real1 + real2;
    imagSum = imag1 + imag2;
    printf("\nSum is  (%f and  %f )",realSum, imagSum);

    
    return 0;
}
