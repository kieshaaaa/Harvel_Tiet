#include <stdio.h>

int main() {
    float first_side, second_side, the_height, area_result;

    printf("Enter lengths of the two bases and height for the area of a trapezoid calculation.\n");
    printf("First base length: ");
    scanf("%f", &first_side);
    printf("Second base length: ");
    scanf("%f", &second_side);
    printf("Height: ");
    scanf("%f", &the_height);

    area_result = 0.5 * (first_side + second_side);
    area_result *= the_height;

    printf("The trapezoid's area is: ");
    printf("%.2f\n", area_result);

    return 0;
}