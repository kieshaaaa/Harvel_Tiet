#include <stdio.h>

int main() {
    int kilometers;
    float miles;
    printf("Enter value in Kilometers (integer): ");
    scanf("%d", &kilometers);

    // 1 km approximately equals 0.621371 miles
    miles = kilometers * 0.621371;

    printf("Kilometers: %d\n", kilometers);
    printf("Miles: %.4f\n", miles);

    return 0;
}