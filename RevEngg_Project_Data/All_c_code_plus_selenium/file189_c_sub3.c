#include <stdio.h>

int main() {
    float d1, d2, area;

    printf("Enter both diagonal lengths separated by space: ");
    scanf("%f %f", &d1, &d2);

    area = (d1 * d2) / 2;

    printf("The calculated area is: ");
    printf("%.2f\n", area);

    return 0;
}