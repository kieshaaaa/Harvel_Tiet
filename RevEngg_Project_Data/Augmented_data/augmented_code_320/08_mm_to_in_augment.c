// C program to convert Millimeters to Inches

// Header Files
#include <stdio.h>


// Define Macros
#define CM_IN_1_INCH 2.54
#define MM_IN_1_CM 10

// Main Function Start
int main()
{
    float millimeters, inches;
    printf("\nEnter value in Millimeters to convert in Inches => ");
    scanf("%f", &millimeters);
    inches = millimeters / MM_IN_1_CM / CM_IN_1_INCH;
    printf("\n%.4f Millimeter = %.4f Inches\n", millimeters, inches);

    return 0;
}
// Main Function End