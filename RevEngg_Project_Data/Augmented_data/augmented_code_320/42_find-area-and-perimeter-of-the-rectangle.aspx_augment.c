/* Source: https://www.includehelp.com/c-programs/find-area-and-perimeter-of-the-rectangle.aspx */
/* 	C program to calculate the area and perimeter 
	of rectangle 
*/

#include <stdio.h>

int main()
{
    float rectLength;
    float rectBreadth;
    float rectArea;
    float rectPerimeter;

    printf("Enter the length: ");
    scanf("%f", &rectLength);
    printf("Enter the breadth: ");
    scanf("%f", &rectBreadth);

    rectArea = rectLength * rectBreadth;
    rectPerimeter = (2 * rectLength) + (2 * rectBreadth);

    printf("Area of the rectangle: %.02f\n", rectArea);
    printf("Perimeter of rectangle: %.02f\n", rectPerimeter);

    return 0;
}