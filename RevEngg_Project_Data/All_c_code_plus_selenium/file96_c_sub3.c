#include <stdio.h>

int main() {
    float radius1, radius2;
    float total;

    printf("Enter the outer radius: ");
    scanf("%f", &radius1);

    printf("Enter the inner radius: ");
    scanf("%f", &radius2);

    total = 2 * 3.14159 * radius1 + 2 * 3.14159 * radius2;

    printf("Total circumference of the annulus: ");
    printf("%.2f\n", total);

    return 0;
}