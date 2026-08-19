#include <stdio.h>
#include <math.h>

int main() {
    float edge, height, areaOfBase, volOfPyramid;
    float root3 = sqrt(3);

    printf("Enter the side length of the hexagon: ");
    scanf("%f", &edge);
    printf("Enter the height of the pyramid: ");
    scanf("%f", &height);

    areaOfBase = ((3 * root3) / 2) * (edge * edge);
    volOfPyramid = areaOfBase * height / 3;

    printf("Volume of the hexagonal pyramid: ");
    printf("%.2f\n", volOfPyramid);

    return 0;
}