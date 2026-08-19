#include <stdio.h>

int main() {
    float diagonal1, diagonal2, area;

    printf("Enter the length of the first diagonal: ");
    scanf("%f", &diagonal1);
    printf("Enter the length of the second diagonal: ");
    scanf("%f", &diagonal2);

    area = (diagonal1 * diagonal2) / 2;

    printf("Area of the kite: %.2f\n", area);

    return 0;
}