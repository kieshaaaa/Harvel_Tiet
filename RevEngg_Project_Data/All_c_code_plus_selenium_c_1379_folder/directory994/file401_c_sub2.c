#include <stdio.h>

int main() {
    float meters, kilometers;

    printf("Please input the distance in meters to convert it into kilometers: ");
    scanf("%f", &meters);

    kilometers = meters / 1000;

    printf("The distance you entered in meters, ");
    printf("%.2f", meters);
    printf(", converts to ");
    printf("%.2f", kilometers);
    printf(" kilometers.\n");

    return 0;
}