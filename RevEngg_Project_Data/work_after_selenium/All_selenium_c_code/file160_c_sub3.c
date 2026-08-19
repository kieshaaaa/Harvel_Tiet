#include <stdio.h>

int main() {
    printf("Enter the side length of the square: ");
    float length;
    scanf("%f", &length);

    float temp = length * length;
    float area = temp;

    printf("Area of the square: ");
    printf("%.2f\n", area);

    return 0;
}