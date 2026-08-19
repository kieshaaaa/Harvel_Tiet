/* Source: https://www.includehelp.com/c-programs/calculate-the-surface-area-volume-of-cone.aspx */
// C program to find the surface Area and
// volume of Cone

#include <stdio.h>
#include <math.h>

int main()
{
    float height = 0;
    float radius = 0;

    float volume = 0;
    float area = 0;

    printf("Enter the height: ");
    scanf("%f", &height);

    printf("Enter the radius: ");
    scanf("%f", &radius);

    volume = (1.0 / 3) * (3.14) * radius * radius * height;
    area = (3.14) * radius * (radius + sqrt(radius * radius + height * height));

    printf("Volume of Cone 	    : %f\n", volume);
    printf("Surface area of Cone: %f\n", area);

    return 0;
}
