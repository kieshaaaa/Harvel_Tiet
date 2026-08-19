#include <stdio.h>

int main() {
    float side_length;
    float octagon_perimeter;

    printf("Input the length of a side: ");
    scanf("%f", &side_length);

    octagon_perimeter = side_length * 8.0f;

    printf("The perimeter is: ");
    printf("%.2f\n", octagon_perimeter);

    return 0;
}