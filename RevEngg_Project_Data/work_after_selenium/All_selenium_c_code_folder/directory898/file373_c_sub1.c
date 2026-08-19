#include <stdio.h>

int main() {
    float outerRadius, innerRadius, pi, outerArea, innerArea, area;

    pi = 3.14159;

    printf("Enter the outer radius: ");
    scanf("%f", &outerRadius);
    printf("Enter the inner radius: ");
    scanf("%f", &innerRadius);

    outerArea = pi * outerRadius * outerRadius;
    innerArea = pi * innerRadius * innerRadius;
    area = outerArea - innerArea;

    printf("Area of the annulus: ");
    printf("%.2f\n", area);

    return 0;
}