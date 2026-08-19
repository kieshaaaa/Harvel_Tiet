#include <stdio.h>

int main() {
    float centimeters, inches;

    printf("Enter the length in centimeters: ");
    scanf("%f", &centimeters);

    inches = centimeters / 2.54;
    printf("%.2f centimeters is equal ", inches);


    return 0;
}