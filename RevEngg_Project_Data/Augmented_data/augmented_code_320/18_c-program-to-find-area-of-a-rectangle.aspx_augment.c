/* Source: https://www.includehelp.com/c-programs/c-program-to-find-area-of-a-rectangle.aspx */
/*C program to find area of a rectangle.*/
 
#include <stdio.h>
 
int main()
{
    float length, breadth, area;
 
    printf("Enter the value of length: ");
    scanf("%f",&length);
 
    printf("Enter the value of breadth: ");
    scanf("%f",&breadth);
 
    area = length * breadth;
 
    printf("Area of rectangle: %f\n",area);
     
    return 0;
}