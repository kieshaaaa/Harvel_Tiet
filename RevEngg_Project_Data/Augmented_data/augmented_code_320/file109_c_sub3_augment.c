#include <stdio.h>

int main() {
    float velocity, duration, distanceTraveled; 

    printf("Velocity (km/h): ");
    scanf("%f", &velocity);

    printf("Duration (hours): ");
    scanf("%f", &duration);

    distanceTraveled = velocity * duration;

    printf("Distance: %.2f Km\n", distanceTraveled);

    return 0;
}