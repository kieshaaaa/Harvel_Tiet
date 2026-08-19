#include <stdio.h>
#define PI 3.14159265358979323846

int main() {
    float a, b, c;
    float volume;

    printf("Axis a: ");
    scanf("%f", &a);
    printf("Axis b: ");
    scanf("%f", &b);
    printf("Axis c: ");
    scanf("%f", &c);

    volume = 4.0 / 3.0 * PI;
    volume *= a * b * c;

    printf("Volume: ");
    printf("%.2f\n", volume);

    return 0;
}