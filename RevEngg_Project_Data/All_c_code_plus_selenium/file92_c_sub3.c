#include <stdio.h>
#include <math.h>

int main() {
    float hexSide, pyrHeight;
    float baseAreaHex, volumePyramid;
    float constantFactor = (3 * sqrt(3)) / 2;

    printf("Enter the side length of the hexagon: ");
    scanf("%f", &hexSide);
    printf("Enter the height of the pyramid: ");
    scanf("%f", &pyrHeight);

    baseAreaHex = constantFactor * hexSide * hexSide;
    volumePyramid = (baseAreaHex * pyrHeight) / 3;

    printf("Volume of the hexagonal pyramid: ");
    printf("%.2f\n", volumePyramid);

    return 0;
}