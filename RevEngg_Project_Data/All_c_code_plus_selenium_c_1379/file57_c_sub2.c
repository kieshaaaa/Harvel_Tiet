#include <stdio.h>
#include <math.h>

int main() {
    int sides;
    float sideLength, area, piOverN;

    printf("Enter the number of sides: ");
    scanf("%d", &sides);
    printf("Enter the length of one side: ");
    scanf("%f", &sideLength);

    piOverN = M_PI / sides;
    area = (sides * sideLength * sideLength) / (4 * tan(piOverN));

    printf("Area of the polygon: ");
    printf("%.2f\n", area);

    return 0;
}