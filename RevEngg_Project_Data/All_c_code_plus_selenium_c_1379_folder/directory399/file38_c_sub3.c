#include <stdio.h>

int main() {
    float mph1, mph2, knots1, knots2;
    printf("Enter first speed in miles per hour: ");
    scanf("%f", &mph1);
    printf("Enter second speed in miles per hour: ");
    scanf("%f", &mph2);
    knots1 = mph1 / 1.15078f;
    knots2 = mph2 / 1.15078f;
    printf("First speed in knots: %f\n", knots1);
    printf("Second speed in knots: %f\n", knots2);
    return 0;
}