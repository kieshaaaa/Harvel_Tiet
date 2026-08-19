#include<stdio.h>

int main() {
    float area, radius, circum, piValue;

    piValue = 3.142;

    printf("ENTER THE RADIUS OF THE CIRCLE :: ");
    scanf("%f", &radius);

    area = piValue * radius * radius;
    circum = 2 * piValue * radius;

    float finalArea = area;
    float finalCircum = circum;

    printf("\nTHE AREA OF THE CIRCLE IS :: ");
    printf("%f", finalArea);

    printf("\n\nTHE CIRCUMFERENCE OF THE CIRCLE IS :: ");
    printf("%f\n", finalCircum);

    return 0;
}