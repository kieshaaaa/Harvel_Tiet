#include <stdio.h>

int main() {
    float mps, knots;
    printf("Enter speed in meters per second: ");
    scanf("%f", &mps);
    knots = mps * 1.943;
    printf(" m/s is %f knots.\n", knots);
    return 0;
}
