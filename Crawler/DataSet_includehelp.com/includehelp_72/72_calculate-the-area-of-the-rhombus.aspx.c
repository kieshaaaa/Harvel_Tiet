/* Source: https://www.includehelp.com/c-programs/calculate-the-area-of-the-rhombus.aspx */
// C program to calculate the area of rhombus

#include <stdio.h>

float calcuateAreaOfRhombus(float diagonal1, float diagonal2)
{
    float result = 0.0F;

    result = 0.5 * diagonal1 * diagonal2;
    return result;
}

int main()
{
    float diagonal1 = 0;
    float diagonal2 = 0;
    float area = 0;

    printf("Enter the value of first diagonal: ");
    scanf("%f", &diagonal1);

    printf("Enter the value of second diagonal: ");
    scanf("%f", &diagonal2);

    area = calcuateAreaOfRhombus(diagonal1, diagonal2);

    printf("Area of rhombus is: %f\n", area);

    return 0;
}
