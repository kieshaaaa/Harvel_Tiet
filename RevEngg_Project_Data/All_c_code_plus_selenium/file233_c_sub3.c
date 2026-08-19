#include <stdio.h>

int main() {
    printf("Enter the length of the first diagonal: ");
    float d1;
    scanf("%f", &d1);

    printf("Enter the length of the second diagonal: ");
    float d2;
    scanf("%f", &d2);

    float area = (d1 * d2) / 2;

    printf("Area of the rhombus: ");
    printf("%.2f\n", area);

    return 0;
}