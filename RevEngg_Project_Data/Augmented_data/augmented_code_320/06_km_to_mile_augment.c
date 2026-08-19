// C program to convert Kilometers to Miles

// Header Files
#include <stdio.h>


// Define Macros
#define KM_IN_1_MILE 1.609344

// Main Function Start
int main()
{
    float kilometers, miles;
    printf("\nEnter value in Kilometers to convert in Miles => ");
    scanf("%f", &kilometers);
    miles = kilometers / KM_IN_1_MILE;
    printf("\n%.4f Kilometer = %.4f Mile\n", kilometers, miles);


    return 0;
}
// Main Function End