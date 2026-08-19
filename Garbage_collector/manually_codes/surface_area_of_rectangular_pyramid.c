#include <stdio.h>
#include <math.h>

int main() {
    float length, width, height, slantHeightL, slantHeightW, surfaceArea;

    // Input: length, width, and perpendicular height of the pyramid
    printf("Enter the length of the base: ");
    scanf("%f", &length);
    printf("Enter the width of the base: ");
    scanf("%f", &width);
    printf("Enter the height of the pyramid: ");
    scanf("%f", &height);

    // Calculating slant heights for triangular faces
    slantHeightL = sqrt((length / 2) * (length / 2) + height * height);
    slantHeightW = sqrt((width / 2) * (width / 2) + height * height);

    // Calculating surface area
    surfaceArea = length * width + length * slantHeightL + width * slantHeightW;

   
    // Output
    printf("Surface area of the rectangular pyramid: %.2f\n", surfaceArea);


    return 0;
}
