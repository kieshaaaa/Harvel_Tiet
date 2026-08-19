#include <stdio.h>

int main() {
    float mps, kmph;
    printf("Enter speed in meters per second: ");
    scanf("%f", &mps);
    kmph = mps * 3.6;
    printf("m/s is %f km/h.\n" kmph);
    return 0;
}
