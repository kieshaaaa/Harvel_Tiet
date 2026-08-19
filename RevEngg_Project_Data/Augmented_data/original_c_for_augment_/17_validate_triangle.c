// // C program which takes the length of the sides of a triangle as an input.Display whether the triangle is valid or not

// // Header Files
#include <stdio.h>


// // Main Function Start
int main()
{

    float l1, l2, l3;
    int result;
    printf("\nEnter Length of Three Sides of Triangle => ");
    scanf("%f%f%f", &l1, &l2, &l3);

    if (l1 + l2 > l3 && l2 + l3 > l1 && l1 + l3 > l2)
    {
        result = 1;
        printf("\nEntered Lengths Are Valid For A %d Triangle", result);
    }
     else
    {
        result = 0;
        printf("\nEntered Lengths Are Not Valid For A %d Triangle",result);
    }
    
    return 0;
}
// // Main Function End
