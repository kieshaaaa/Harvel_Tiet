#include <stdio.h>

int main() {
    float r1, r2, sumCircumference;
    
    printf("Enter the outer radius: ");
    scanf("%f", &r1);
    
    printf("Enter the inner radius: ");
    scanf("%f", &r2);

    sumCircumference = 2 * 3.14159 * (r1 + r2);
    
    printf("Total circumference of the annulus: ");
    printf("%.2f\n", sumCircumference);

    return 0;
}