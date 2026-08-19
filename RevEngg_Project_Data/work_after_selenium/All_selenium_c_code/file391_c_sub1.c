#include<stdio.h>
#define PI 3.142

int main() {
    float area, radius, circum;

    printf("ENTER THE RADIUS OF THE CIRCLE :: ");
    scanf("%f", &radius);

    area = PI * radius * radius;
    circum = 2 * PI * radius;

    printf("\nTHE AREA OF THE CIRCLE IS :: ");
    printf("%f", area);

    printf("\n\nTHE CIRCUMFERENCE OF THE CIRCLE IS :: ");
    printf("%f\n", circum);

    return 0;
}