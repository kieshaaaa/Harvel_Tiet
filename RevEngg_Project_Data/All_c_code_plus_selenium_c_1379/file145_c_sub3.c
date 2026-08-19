#include <stdio.h>

int main() {
    float base, slantHeight, totalSurfaceArea;
    printf("Input base length: ");
    scanf("%f", &base);
    printf("Input slant height: ");
    scanf("%f", &slantHeight);
    float baseArea = base * base;
    float lateralArea = 2 * base * slantHeight;
    totalSurfaceArea = baseArea + lateralArea;
    printf("Surface Area: %.2f\n", totalSurfaceArea);
    return 0;
}