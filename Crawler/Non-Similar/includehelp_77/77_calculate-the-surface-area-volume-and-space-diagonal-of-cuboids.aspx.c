/* Source: https://www.includehelp.com/c-programs/calculate-the-surface-area-volume-and-space-diagonal-of-cuboids.aspx */
// C program to calculate the surface Area,
// volume, and space diagonal of cuboids.

#include <stdio.h>
#include <math.h>

int main()
{
    float height = 0;
    float width = 0;
    float length = 0;

    float volume = 0;
    float area = 0;
    float diagonal = 0;

    printf("Enter the height: ");
    scanf("%f", &height);

    printf("Enter the width: ");
    scanf("%f", &width);

    printf("Enter the length: ");
    scanf("%f", &length);

    diagonal = sqrt(width * width) + (length * length) + (height * height);
    area = 2 * (width * length) + (length * height) + (height * width);
    volume = width * length * height;

    printf("Volume of Cuboids is		: %f\n", volume);
    printf("Surface area of Cuboids is  : %f\n", area);
    printf("Space diagonal of Cuboids is: %f\n", diagonal);

    return 0;
}
