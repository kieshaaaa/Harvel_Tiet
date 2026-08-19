#include <stdio.h>
#include <math.h>

int main() {
    int n;
    float s, area;
    float pi = 3.141592653589793; // Directly using the value of π

    // Prompt the user for the number of sides and the length of one side
    printf("Enter the number of sides: ");
    scanf("%d", &n);
    printf("Enter the length of one side: ");
    scanf("%f", &s);

    // Calculate the area
    area = (n * s * s) / (4 * tan(pi / n));

    // Display the result
    printf("Area of the polygon: %.2f\n", area);

    return 0;
}
