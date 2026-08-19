#include <stdio.h>

int main() {
    float mps, mph;
    printf("Enter speed in meters per second: ");
    scanf("%f", &mps);
    mph = mps * 2.236;
    printf("Speed in mph is: ");
    printf("%f\n", mph);
    return 0;
}