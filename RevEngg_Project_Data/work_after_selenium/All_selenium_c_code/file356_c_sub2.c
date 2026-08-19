#include <stdio.h>

int main() {
    float length, width;
    printf("Enter the length and width of the rectangle: ");
    scanf("%f %f", &length, &width);

    float perimeter = 2 * (length + width);

    printf("Perimeter of the rectangle: ");
    printf("%.2f\n", perimeter);

    return 0;
}