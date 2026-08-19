#include <stdio.h>

int main() {
    float speed_kmph, speed_mph;
    printf("Enter speed in km/h: ");
    scanf("%f", &speed_kmph);
    speed_mph = speed_kmph * 0.6213712; // More accurate conversion factor
    printf("Speed in mph: %f\n", speed_mph);
    return 0;
}