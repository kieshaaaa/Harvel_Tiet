#include <stdio.h>

int main() {
    float length;
    float total_perimeter;

    printf("Length of the octagon's side: ");
    scanf("%f", &length);

    total_perimeter = 8.0f * length;

    printf("Total perimeter: ");
    printf("%.2f\n", total_perimeter);

    return 0;
}