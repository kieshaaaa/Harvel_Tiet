#include <stdio.h>
#include <math.h>

int main() {
    float baseSide, totalSurfaceArea, sqrtThreeTimesFour;
    printf("Enter the side length of the triangular pyramid: ");
    scanf("%f", &baseSide);
    sqrtThreeTimesFour = sqrt(3) * 4;
    totalSurfaceArea = (sqrtThreeTimesFour / 4) * baseSide * baseSide;
    printf("Surface area of the triangular pyramid: ");
    printf("%.2f\n", totalSurfaceArea);
    return 0;
}