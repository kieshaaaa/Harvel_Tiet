#include <stdio.h>

int main() {
    float millimeters, centimeters;
    
    printf("Enter the length in millimeters: ");
    scanf("%f", &millimeters);

    centimeters = millimeters / 10.0;

    float result = centimeters;
    printf("millimeters is equal to ");
    printf("%.2f centimeters.\n", result);

    return 0;
}