/* Source: https://www.includehelp.com/c-programs/c-program-to-find-area-and-perimeter-of-circle.aspx */
/*C program to find area and perimeter of circle.*/
 
#include <stdio.h>
 
#define PI 3.14f
 
int main()
{
    float rad,area, perm;
 
    printf("Enter radius of circle: ");
    scanf("%f",&rad);
 
    area=PI*rad*rad;
    perm=2*PI*rad;
 
    printf("Area of circle: %f \nPerimeter of circle: %f\n",area,perm);
    return 0;
}
