#include <stdio.h>

int main() {
    float len, wid, peri;

    // Prompt the user for the length and width of the rectangle
    printf("Enter the length of the rectangle: ");
    scanf("%f", &len);
    printf("Enter the width of the rectangle: ");
    scanf("%f", &wid);

    // Calculate the perimeter
    peri = 2 * (len + wid);

    // Display the result
    printf("Perimeter of the rectangle: %.2f\n", peri);

    return 0;
}