#include <stdio.h>

int main() {
    float powerInHorsepower, powerInWatts;
    printf("Enter power in Horsepower: ");
    scanf("%f", &powerInHorsepower);
    
    powerInWatts = powerInHorsepower * 746.0f;
    
    printf("Horsepower is equal to ");
    printf("%.2f", powerInWatts);
    printf(" Watts.\n");
    
    return 0;
}