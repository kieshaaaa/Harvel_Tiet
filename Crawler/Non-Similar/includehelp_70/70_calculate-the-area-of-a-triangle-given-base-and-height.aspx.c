/* Source: https://www.includehelp.com/c-programs/calculate-the-area-of-a-triangle-given-base-and-height.aspx */
// C program to calculate the area of a triangle
// given base and height

#include <stdio.h>

int calcuateAreaTriangle(int base, int height)
{
    return (base * height) / 2;
}

int main()
{
    int base = 0;
    int height = 0;
    int area = 0;

    printf("Enter the base of Triangle: ");
    scanf("%d", &base);

    printf("Enter the height of Triangle: ");
    scanf("%d", &height);

    area = calcuateAreaTriangle(base, height);

    printf("Area of a triangle: %d\n", area);

    return 0;
}
