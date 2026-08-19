#include <stdio.h>

int main() {
    float side, perimeter = 0;
    int i = 0;

    while (i < 4) {
        printf("Enter the length of side %d: ", i + 1);
        scanf("%f", &side);
        perimeter += side;
        i++;
    }

    printf("Perimeter of the quadrilateral: %.2f\n", perimeter);

    return 0;
}