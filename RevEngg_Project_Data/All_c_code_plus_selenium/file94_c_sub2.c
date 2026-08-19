#include <stdio.h>

int main() {
    float yards, miles;

    printf("Please input yards to convert to miles: ");
    scanf("%f", &yards);

    miles = yards / 1760.0;

    printf("Conversion: %.2f yards = %.2f miles\n", yards, miles);

    return 0;
}