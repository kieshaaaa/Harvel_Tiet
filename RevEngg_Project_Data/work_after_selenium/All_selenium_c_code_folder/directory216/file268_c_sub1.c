#include <stdio.h>
#include <math.h>

int main() {
    float side, height, areaBase, vol;
    float pi = 3.14159;

    printf("Input side length of pentagon: ");
    scanf("%f", &side);

    printf("Input pyramid's height: ");
    scanf("%f", &height);

    areaBase = (5.0f * side * side) / (4.0f * tan(pi / 5.0f));
    vol = (areaBase * height) / 3.0f;

    printf("The volume of the pentagonal pyramid is: ");
    printf("%.2f\n", vol);

    return 0;
}