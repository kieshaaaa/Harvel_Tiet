#include <stdio.h>

int main() {
    float conversionFactor ; 
    conversionFactor = 2.236;
    float mps, mph;
    printf("Enter speed in meters per second: ");
    scanf("%f", &mps);
    mph = mps * conversionFactor;
    printf("Speed in mph is: %f\n", mph);
    return 0;
}
