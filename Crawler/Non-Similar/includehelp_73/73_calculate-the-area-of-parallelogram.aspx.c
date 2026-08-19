/* Source: https://www.includehelp.com/c-programs/calculate-the-area-of-parallelogram.aspx */
// C program to calculate the area of Parallelogram

#include <stdio.h>

float calcuateAreaOfParallelogram(float base, float altitude)
{
    float result = 0.0F;

    result = base * altitude;

    return result;
}

int main()
{
    float base = 0;
    float altitude = 0;
    float area = 0;

    printf("Enter the value of base: ");
    scanf("%f", &base);

    printf("Enter the value of altitude: ");
    scanf("%f", &altitude);

    area = calcuateAreaOfParallelogram(base, altitude);

    printf("Area of Parallelogram is: %f\n", area);

    return 0;
}
