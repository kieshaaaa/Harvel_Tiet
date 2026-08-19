#include <stdio.h>

int main() {
    float length, width;
    printf("Enter the length of the rectangle: ");
    scanf("%f", &length);
    printf("Enter the width of the rectangle: ");
    scanf("%f", &width);

    float lengthSum = length + width;
    float perimeter = 2 * lengthSum;

    printf("Perimeter of the rectangle: ");
    printf("%.2f\n", perimeter);

    return 0;
}