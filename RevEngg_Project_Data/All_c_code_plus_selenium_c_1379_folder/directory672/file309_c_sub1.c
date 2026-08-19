#include <stdio.h>

int main() {
    float kmph, knots;
    printf("Enter speed in kilometers per hour: ");
    scanf("%f", &kmph);
    knots = kmph / 1.852;
    printf("The speed in knots is ");
    printf("%f\n", knots);
    return 0;
}