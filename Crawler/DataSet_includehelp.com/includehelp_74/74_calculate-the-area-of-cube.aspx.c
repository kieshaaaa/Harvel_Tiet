/* Source: https://www.includehelp.com/c-programs/calculate-the-area-of-cube.aspx */
// C program to calculate the area of Cube

#include <stdio.h>

float calcuateAreaOfCube(float side)
{
    float result = 0.0F;

    result = 6.0 * side * side;

    return result;
}

int main()
{
    float side = 0;
    float area = 0;

    printf("Enter the length of side: ");
    scanf("%f", &side);

    area = calcuateAreaOfCube(side);

    printf("Area of Cube is: %f\n", area);

    return 0;
}
