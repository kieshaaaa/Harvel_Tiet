#include <stdio.h>

int main() {
    int n;
    float s, perimeter;

    // Prompt the user for the number of sides and the length of one side
    printf("Enter the number of sides: ");
    scanf("%d", &n);
    printf("Enter the length of one side: ");
    scanf("%f", &s);

    // Calculate the perimeter
    perimeter = n * s;

    // Display the result
    printf("Perimeter of the polygon: %.2f\n", perimeter);

    return 0;
}
