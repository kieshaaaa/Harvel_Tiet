#include<stdio.h>

int main() {
    float vehicleSpeed, travelTime, travelDistance;

    printf("Enter the Speed in Kms: \n");
    scanf("%f", &vehicleSpeed);

    printf("Enter the Time in hours: \n");
    scanf("%f", &travelTime);

    travelDistance = vehicleSpeed * travelTime;

    printf("Distance travelled by a vehicle is: %.2f Km \n", travelDistance);

    return 0;
}