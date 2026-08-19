/* Source: https://www.includehelp.com/c-programs/c-basic-programs-to-demonstrate-example-of-floor-and-ceil-functions.aspx */
/* C program to demonstrate example of floor and ceil functions.*/
 
#include <stdio.h>
#include <math.h>
 
int main()
{
    float num;
    float floorNum, ceilNum;
 
    printf("Enter a float value: ");
    scanf("%f",&num);
 
    floorNum = floor(num);
    ceilNum = ceil(num);
    printf("floor value:%f \nceil value:%f\n", floorNum, ceilNum);
    return 0;
}