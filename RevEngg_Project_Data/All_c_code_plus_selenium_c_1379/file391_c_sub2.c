#include<stdio.h>

int main() {
    float area, radius, circum;

    printf("ENTER THE RADIUS OF THE CIRCLE :: ");
    scanf("%f", &radius);

    area = 3.142 * radius * radius;
    circum = 2 * 3.142 * radius;

    printf("\nTHE AREA OF THE CIRCLE IS :: ");
    float areaResult = area;
    printf("%f", areaResult);

    printf("\n\nTHE CIRCUMFERENCE OF THE CIRCLE IS :: ");
    float circumResult = circum;
    printf("%f\n", circumResult);

    return 0;
}