#include <stdio.h>

int main() {
    float length;
    float width;
    float perimeter;

    printf("Enter the length of the rectangle: ");
    scanf("%f", &length);

    printf("Enter the width of the rectangle: ");
    scanf("%f", &width);

    perimeter = 2 * (length + width);

    printf("Perimeter of the rectangle: ");
    printf("%.2f\n", perimeter);

    return 0;
}