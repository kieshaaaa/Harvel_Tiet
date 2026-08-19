#include <stdio.h>

int main() {
    printf("Enter speed in meters per second: ");
    float mps;
    scanf("%f", &mps);
    float mph = mps * 2.236;
    printf("Speed in mph is: %f\n", mph);
    return 0;
}