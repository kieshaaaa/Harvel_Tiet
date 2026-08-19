#include <stdio.h>

int main() {
    float outerRadius, innerRadius, area, diffSquare;

    printf("Enter the outer radius: ");
    scanf("%f", &outerRadius);

    printf("Enter the inner radius: ");
    scanf("%f", &innerRadius);

    diffSquare = outerRadius * outerRadius - innerRadius * innerRadius;
    area = diffSquare * 3.14159;

    printf("Area of the annulus: ");
    printf("%.2f\n", area);

    return 0;
}