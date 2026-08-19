#include<stdio.h>

int main() {
    float speedOfVehicle, timeOfTravel, distanceTravelled;

    printf("Please enter the speed of the vehicle in kilometers per hour (km/h): ");
    scanf("%f", &speedOfVehicle);

    printf("Please enter the time of travel in hours: ");
    scanf("%f", &timeOfTravel);

    distanceTravelled = speedOfVehicle * timeOfTravel;

    printf("The vehicle has travelled: %.2f Km\n", distanceTravelled);

    return 0;
}