#include <stdio.h>

int main() {
    float inputSpeed, convertedSpeed;
    printf("Provide speed (km/h): ");
    scanf("%f", &inputSpeed);
    convertedSpeed = inputSpeed * 0.621371;
    printf("In mph: %f\n", convertedSpeed);
    return 0;
}