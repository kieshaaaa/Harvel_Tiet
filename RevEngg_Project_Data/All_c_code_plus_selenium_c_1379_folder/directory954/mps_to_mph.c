#include <stdio.h>

int main() {
    float mps, mph;
    printf("Enter speed in meters per second: ");
    scanf("%f", &mps);
    mph = mps * 2.236;
    printf(" m/s is %f mph.\n" mph);
    return 0;
}
