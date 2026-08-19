#include <stdio.h>

int main() {
    float cm, m;

    printf("Enter the length in centimeters: ");
    scanf("%f", &cm);

    m = cm / 100.0;

    printf(" centimeters is equal to %.2f meters.\n", m);

    return 0;
}