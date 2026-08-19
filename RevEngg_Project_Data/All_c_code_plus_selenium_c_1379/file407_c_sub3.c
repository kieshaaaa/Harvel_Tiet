#include <stdio.h>

int main() {
    float side, perimeter;
    printf("Enter the length of the side: ");
    scanf("%f", &side);
    perimeter = 4 * side;
    printf("Perimeter of the rhombus: ");
    printf("%.2f\n", perimeter);
    return 0;
}