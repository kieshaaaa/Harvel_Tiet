// // C program which takes the length of the sides of a triangle as an input.Display whether the triangle is valid or not

// // Header Files
#include <stdio.h>


// // Main Function Start
int main()
{

    float side1, side2, side3;
    int isValid;
    printf("\nEnter Length of Three Sides of Triangle => ");
    scanf("%f%f%f", &side1, &side2, &side3);

    if (side1 + side2 > side3 && side2 + side3 > side1 && side1 + side3 > side2)
    {
        isValid = 1;
        printf("\nEntered Lengths Are Valid For A %d Triangle", isValid);
    }
     else
    {
        isValid = 0;
        printf("\nEntered Lengths Are Not Valid For A %d Triangle",isValid);
    }
    
    return 0;
}
// // Main Function End