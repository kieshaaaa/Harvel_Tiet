#include <stdio.h>

int main() {
    float bLength, sHeight, sArea;
    printf("Enter base length: ");
    scanf("%f", &bLength);
    printf("Enter slant height: ");
    scanf("%f", &sHeight);
    sArea = bLength * bLength; // Base area calculation
    sArea += 2 * bLength * sHeight; // Adding lateral surface area
    printf("Total Surface Area: %.2f\n", sArea);
    return 0;
}