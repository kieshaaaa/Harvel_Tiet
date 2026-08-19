#include <stdio.h>
#include <math.h>

int main() {
    float s, a;

    // Prompt the user for the length of the side
    printf("Enter the length of the side: ");
    scanf("%f", &s);

    // Calculate the area
    a = 2 * (1 + sqrt(2)) * s * s;

    // Display the result
    printf("Area of the octagon: %.2f\n", a);

    return 0;
}