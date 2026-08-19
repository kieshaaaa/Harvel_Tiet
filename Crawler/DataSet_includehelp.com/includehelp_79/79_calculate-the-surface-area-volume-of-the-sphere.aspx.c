/* Source: https://www.includehelp.com/c-programs/calculate-the-surface-area-volume-of-the-sphere.aspx */
// C program to calculate the surface Area and
// volume of Sphere

#include <stdio.h>
#include <math.h>

int main()
{
    float radius = 0;

    float volume = 0;
    float area = 0;

    printf("Enter the radius: ");
    scanf("%f", &radius);

    volume = (4.0 / 3) * (3.14) * pow(radius, 3);
    area = 4 * (3.14) * pow(radius, 2);

    printf("Volume of Sphere 	  : %f\n", volume);
    printf("Surface area of Sphere: %f\n", area);

    return 0;
}
