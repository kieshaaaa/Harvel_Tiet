#include <stdio.h>

int main() {
    float outerRadius, innerRadius, area;
    float piValue = 3.14159;
    float outerSquare, innerSquare;

    printf("Enter the outer radius: ");
    scanf("%f", &outerRadius);

    printf("Enter the inner radius: ");
    scanf("%f", &innerRadius);

    outerSquare = outerRadius * outerRadius;
    innerSquare = innerRadius * innerRadius;

    area = piValue * (outerSquare - innerSquare);

    printf("Area of the annulus: ");
    printf("%.2f\n", area);

    return 0;
}