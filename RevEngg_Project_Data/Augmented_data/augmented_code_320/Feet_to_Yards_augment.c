#include <stdio.h>

int main() {
    float ft, yd;

    printf("Enter the length in feet: ");
    scanf("%f", &ft);

    yd = ft / 3.0;

    printf("feet is equal to %.2f yards.\n", yd);

    return 0;
}