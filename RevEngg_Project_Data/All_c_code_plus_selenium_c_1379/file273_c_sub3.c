#include <stdio.h>
#include <math.h>

int main() {
    float side;

    printf("Enter the length of the side: ");
    scanf("%f", &side);

    side *= side * 2 * (1 + sqrt(2));

    printf("Area of the octagon: ");
    printf("%.2f\n", side); // Here, 'side' is repurposed to store the area

    return 0;
}