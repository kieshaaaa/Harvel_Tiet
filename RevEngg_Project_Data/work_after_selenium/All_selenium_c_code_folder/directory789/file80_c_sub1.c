#include <stdio.h>

int main() {
    float base, height;
    printf("Enter the base of the triangle: ");
    scanf("%f", &base);
    printf("Enter the height of the triangle: ");
    scanf("%f", &height);
    
    printf("Area of the triangle: %.2f\n", 0.5 * base * height);
    return 0;
}