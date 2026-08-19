#include <stdio.h>

int main() {
    float diagonal1, diagonal2, areaOfRhombus;

    printf("Enter the length of the first diagonal (d1): ");
    scanf("%f", &diagonal1);
    printf("Enter the length of the second diagonal (d2): ");
    scanf("%f", &diagonal2);

    areaOfRhombus = (diagonal1 * diagonal2) / 2;

    printf("Area of the rhombus: %.2f\n", areaOfRhombus);

    return 0;
}