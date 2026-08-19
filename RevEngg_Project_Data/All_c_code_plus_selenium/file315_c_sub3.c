#include <stdio.h>

int main() {
    const float conversionFactor = 2.236;
    float mps, mph;
    printf("Enter speed in meters per second: ");
    scanf("%f", &mps);
    mph = mps * conversionFactor;
    printf("Speed in mph is: %f\n", mph);
    return 0;
}