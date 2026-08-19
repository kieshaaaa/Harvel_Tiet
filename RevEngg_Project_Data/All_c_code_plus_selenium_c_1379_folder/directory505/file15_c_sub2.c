#include <stdio.h>

int main() {
    double radius;
    double volume;
    double pi = 3.141592653589793; // More precise value of pi

    printf("Enter the radius of the sphere: ");
    scanf("%lf", &radius); // %lf for reading double

    volume = (4.0/3.0) * pi * radius * radius * radius;

    printf("Volume of the sphere: ");
    printf("%.2lf\n", volume); // %.2lf for printing double with two decimals

    return 0;
}