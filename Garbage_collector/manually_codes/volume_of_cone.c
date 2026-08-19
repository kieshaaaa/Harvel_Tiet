#include <stdio.h>
#include <math.h>
#define PI 3.14159

int main() {
    float radius, height, volume;

    // Prompt the user for the radius and height of the cone
    printf("Enter the radius of the cone: ");
    scanf("%f", &radius);
    printf("Enter the height of the cone: ");
    scanf("%f", &height);

    // Calculate the volume
    volume = (PI * radius * radius * height) / 3;

    // Display the result
    printf("Volume of the cone: %.2f\n", volume);

    return 0;
}
