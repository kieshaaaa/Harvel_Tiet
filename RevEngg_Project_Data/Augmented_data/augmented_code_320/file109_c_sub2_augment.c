#include <stdio.h>

int main() {
    float velocity, travelTime, distance;

    printf("Please enter the speed of the vehicle in kilometers per hour (km/h): ");
    scanf("%f", &velocity);

    printf("Please enter the time of travel in hours: ");
    scanf("%f", &travelTime);

    distance = velocity * travelTime;

    printf("The vehicle has travelled: %.2f Km\n", distance);

    return 0;
}