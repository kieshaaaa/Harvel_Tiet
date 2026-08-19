#include<stdio.h>

int main() {
    float speed, time, distance; // Variables to store speed, time, and distance respectively

    // Prompt user for speed in kilometers per hour
    printf("Speed (km/h): ");
    scanf("%f", &speed);

    // Prompt user for time in hours
    printf("Time (hours): ");
    scanf("%f", &time);

    // Calculate distance
    distance = speed * time;

    // Output the calculated distance
    printf("Distance: %.2f Km\n", distance);

    return 0;
}