#include <stdio.h>

int main() {
    int a, b;
    float rem;

    printf("\nEnter first number :: ");
    scanf("%d", &a);
    printf("\nEnter second number :: ");
    scanf("%d", &b);

    rem = b - (b / a) * a;
    rem = a - rem;

    printf("\nRemainder of [ %d ] & [ %d ] is = %.0f\n", a, b, rem);

    return 0;
}