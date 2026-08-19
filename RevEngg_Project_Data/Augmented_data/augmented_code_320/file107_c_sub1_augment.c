#include <stdio.h>

int main() {
    float millimeters;
    float inches;

    printf("Enter length in millimeters: ");
    scanf("%f", &millimeters);

    inches = millimeters / 25.4;

    printf("%f millimeters is %f inches.\n", millimeters, inches);

    return 0;
}