#include <stdio.h>
#include <math.h>

int main() {
    int n;
    float s, area;

    // Prompt the user for the number of sides and the length of one side
    printf("Enter the number of sides: ");
    scanf("%d", &n);
    printf("Enter the length of one side: ");
    scanf("%f", &s);

    // Calculate the area
    area = (n * s * s) / (4 * tan(M_PI / n));

    // Display the result
    printf("Area of the polygon: %.2f\n", area);

    return 0;
}
