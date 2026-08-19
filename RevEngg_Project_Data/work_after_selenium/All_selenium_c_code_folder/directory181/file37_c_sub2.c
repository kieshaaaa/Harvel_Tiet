#include <stdio.h>

int main() {
    float powerHP, powerW;
    float conversionFactor;
    
    printf("Enter power in Horsepower: ");
    scanf("%f", &powerHP);
    
    conversionFactor = 746.0f;
    powerW = powerHP * conversionFactor;
    
    printf("Horsepower is equal to ");
    printf("%.2f", powerW);
    printf(" Watts.\n");
    
    return 0;
}