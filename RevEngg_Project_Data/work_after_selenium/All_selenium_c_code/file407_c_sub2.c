#include <stdio.h>

int main() {
    float side;
    scanf("%f", &side);
    float perimeter = 4 * side;
    printf("Perimeter of the rhombus: ");
    printf("%.2f\n", perimeter);
    return 0;
}