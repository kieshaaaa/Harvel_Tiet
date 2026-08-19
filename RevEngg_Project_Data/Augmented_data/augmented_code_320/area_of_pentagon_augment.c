#include <stdio.h>
#include <math.h>

int main() {
    float s, a;

    // Prompt the user for the length of the side
    printf("Enter the length of the side: ");
    scanf("%f", &s);

    // Calculate the area
    a = (sqrt(5 * (5 + 2 * sqrt(5))) * s * s) / 4;

    // Display the result
    printf("Area of the pentagon: %.2f\n", a);

    return 0;
}