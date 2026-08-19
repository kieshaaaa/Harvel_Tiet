#include <stdio.h>

int main() {
    float kmph, knots;
    printf("Enter speed in kilometers per hour: ");
    scanf("%f", &kmph);
    knots = kmph / 1.852;
    printf(" km/h is %f knots.\n", knots);
    return 0;
}
