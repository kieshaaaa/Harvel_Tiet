#include <stdio.h>

int main() {
    float base1, base2, vert_height, calculated_area;

    printf("Input the length of the first base: ");
    scanf("%f", &base1);

    printf("Input the length of the second base: ");
    scanf("%f", &base2);

    printf("Input the height: ");
    scanf("%f", &vert_height);

    calculated_area = 0.5 * (base1 + base2) * vert_height;

    printf("Calculated area: ");
    printf("%.2f\n", calculated_area);

    return 0;
}