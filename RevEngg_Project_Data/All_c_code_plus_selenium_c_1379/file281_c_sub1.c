#include <stdio.h>

int main() {
    float m, y;

    printf("Enter length in meters: ");
    scanf("%f", &m);

    y = m * 1.09;

    printf("%f meters = %f yards\n", m, y);

    return 0;
}