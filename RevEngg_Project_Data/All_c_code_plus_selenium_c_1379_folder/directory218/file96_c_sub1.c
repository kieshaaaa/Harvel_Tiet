#include <stdio.h>

int main() {
    float outerRadius, innerRadius;
    float outerCircumference, innerCircumference, totalCircumference;
    
    printf("Enter the outer radius: ");
    scanf("%f", &outerRadius);
    
    printf("Enter the inner radius: ");
    scanf("%f", &innerRadius);

    outerCircumference = 2 * 3.14159 * outerRadius;
    innerCircumference = 2 * 3.14159 * innerRadius;
    totalCircumference = outerCircumference + innerCircumference;
    
    printf("Total circumference of the annulus: ");
    printf("%.2f\n", totalCircumference);

    return 0;
}