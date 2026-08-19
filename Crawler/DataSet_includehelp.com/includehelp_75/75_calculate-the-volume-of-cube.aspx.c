/* Source: https://www.includehelp.com/c-programs/calculate-the-volume-of-cube.aspx */
// C program to calculate the volume of Cube

#include <stdio.h>

float calcuateVolumeOfCube(float side)
{
    float result = 0.0F;

    result = side * side * side;

    return result;
}

int main()
{
    float side = 0;
    float volume = 0;

    printf("Enter the length of side: ");
    scanf("%f", &side);

    volume = calcuateVolumeOfCube(side);

    printf("Volume of Cube is: %f\n", volume);

    return 0;
}
