#include <stdio.h>

int main() {
    float d1, d2;
    printf("Enter the length of the first diagonal (d1): ");
    scanf("%f", &d1);
    printf("Enter the length of the second diagonal (d2): ");
    scanf("%f", &d2);

    float area = (d1 * d2) / 2;
    printf("Area of the rhombus: ");
    printf("%.2f\n", area);

    return 0;
}