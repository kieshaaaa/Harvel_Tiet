/* Source: https://www.includehelp.com/c-programs/calculate-the-area-of-a-triangle-given-three-sides.aspx */
// C program to calculate the area of a triangle
// given three sides

#include <stdio.h>
#include <math.h>

float calcuateAreaTriangle(int a, int b, int c)
{
    float s = 0;
    float area = 0;

    s = (float)(a + b + c) / 2;
    area = sqrt(s * (s - a) * (s - b) * (s - c));

    return area;
}

int main()
{
    int a = 0;
    int b = 0;
    int c = 0;

    float area = 0;

    printf("Enter the First edge of Triangle: ");
    scanf("%d", &a);

    printf("Enter the Second edge of Triangle: ");
    scanf("%d", &b);

    printf("Enter the Third edge of Triangle: ");
    scanf("%d", &c);

    area = calcuateAreaTriangle(a, b, c);

    printf("Area of a triangle: %f\n", area);

    return 0;
}
