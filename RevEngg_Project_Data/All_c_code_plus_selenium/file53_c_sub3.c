#include <stdio.h>

int main() {
    const float sides = 5.0;
    float sideLength;
    printf("Enter the length of a side: ");
    scanf("%f", &sideLength);

    float totalPerimeter = sides * sideLength;
    printf("The perimeter is: ");
    printf("%.2f\n", totalPerimeter);

    return 0;
}