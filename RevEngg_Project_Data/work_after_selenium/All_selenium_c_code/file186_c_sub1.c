#include <stdio.h>

int main() {
    float sides[4], perimeter = 0;
    int i;

    for (i = 0; i < 4; i++) {
        printf("Enter the length of side %d: ", i+1);
        scanf("%f", &sides[i]);
        perimeter += sides[i];
    }

    printf("Perimeter of the quadrilateral: %.2f\n", perimeter);

    return 0;
}