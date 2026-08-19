#include <stdio.h>
#include <math.h>

int main() {
    float radius, volume;

    // Prompt the user for the radius of the sphere
    printf("Enter the radius of the sphere: ");
    scanf("%f", &radius);

    // Calculate the volume
    volume = (4.0/3.0) * M_PI * (radius * radius * radius);

    // Display the result
    printf("Volume of the sphere: %.2f\n", volume);

    return 0;
}
