#include <stdio.h>

int main() {
    float w, hp;

    printf("Enter power in Watts: ");
    scanf("%f", &w);

    hp = w / 746.0f;

    printf("Watts: %.2f = Horsepower: %.2f\n", w, hp);

    return 0;
}