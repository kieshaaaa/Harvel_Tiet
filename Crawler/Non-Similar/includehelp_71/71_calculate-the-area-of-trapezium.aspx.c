/* Source: https://www.includehelp.com/c-programs/calculate-the-area-of-trapezium.aspx */
// C program to calculate the area of Trapezium

#include <stdio.h>

float calcuateAreaOfTrapezium(float base1, float base2, float height)
{
    float result = 0.0F;

    result = 0.5 * (base1 + base2) * height;

    return result;
}

int main()
{
    float base1 = 0;
    float base2 = 0;
    float height = 0;
    float area = 0;

    printf("Enter base1: ");
    scanf("%f", &base1);

    printf("Enter base2: ");
    scanf("%f", &base2);

    printf("Enter height: ");
    scanf("%f", &height);

    area = calcuateAreaOfTrapezium(base1, base2, height);

    printf("Area of Trapezium is: %f\n", area);

    return 0;
}
