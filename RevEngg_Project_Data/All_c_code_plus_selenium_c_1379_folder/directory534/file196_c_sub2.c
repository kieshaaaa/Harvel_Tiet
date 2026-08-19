#include <stdio.h>

int main() {
    float kilometers;
    float miles;

    printf("Please, type the kilometers to convert into miles: ");
    scanf("%f", &kilometers);

    miles = kilometers * 0.621371;

    printf("%.2f kilometers equals %.2f miles.\n", kilometers, miles);

    return 0;
}