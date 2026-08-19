#include <stdio.h>

int main() {
    float millimeters;
    
    printf("Enter the length in millimeters: ");
    scanf("%f", &millimeters);

    printf("You entered: %.2f mm\n", millimeters);

    float centimeters = millimeters / 10.0;

    printf("This is equal to ");
    printf("%.2f centimeters.\n", centimeters);

    return 0;
}