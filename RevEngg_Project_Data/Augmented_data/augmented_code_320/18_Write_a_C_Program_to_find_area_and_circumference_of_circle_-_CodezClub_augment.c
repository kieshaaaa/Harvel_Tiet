/* Source: https://www.codezclub.com/c-calculate-area-and-circumference-of-circle/ */
/*  C Program to find area and circumference of circle  */

#include<stdio.h>

int main()
{
    float radius, area_of_circle, circumference;

    printf("ENTER THE RADIUS OF THE CIRCLE :: ");
    scanf("%f", &radius);
    area_of_circle = 3.142 * radius * radius;
    circumference = 2 * 3.142 * radius;
    printf("\nTHE AREA OF THE CIRCLE IS :: %f", area_of_circle);
    printf("\n\nTHE CIRCUMFERENCE OF THE CIRCLE IS :: %f\n", circumference);

    return 0;
}