#include <stdio.h>

int main() {
    float side;

    printf("Enter the side length of the cube: ");
    scanf("%f", &side);

    printf("Volume of the cube: %.2f\n", side * side * side);

    return 0;
}