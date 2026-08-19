#include <stdio.h>
#define PI 3.14159

int main() {
    float radius, height, volume;

    // Prompt the user for the radius and height of the cylinder
    printf("Enter the radius of the cylinder: ");
    scanf("%f", &radius);
    printf("Enter the height of the cylinder: ");
    scanf("%f", &height);

    // Calculate the volume
    volume = PI * radius * radius * height;

    // Display the result
    printf("Volume of the cylinder: %.2f\n", volume);

    return 0;
}
