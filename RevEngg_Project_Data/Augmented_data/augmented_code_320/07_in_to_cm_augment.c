// // C program to convert Inches to Centimeters

// // Header Files
#include <stdio.h>


// // Define Macros
#define CM_IN_1_INCH 2.54

// // Main Function Start
int main()
{
    float inches, centimeters;
    printf("\nEnter value in Inches to convert in Centimeters => ");
    scanf("%f", &inches);
    centimeters = inches * CM_IN_1_INCH;
    printf("\n%.4f Inch = %.4f Centimeter\n", inches, centimeters);


    return 0;
}
// // Main Function End