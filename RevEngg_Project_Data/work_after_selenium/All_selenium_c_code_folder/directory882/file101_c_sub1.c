#include <stdio.h>

int main() {
    float a, b, c, d, result, sumAB, sumCD;

    printf("Enter four numbers (a, b, c, d): ");
    scanf("%f %f %f %f", &a, &b, &c, &d);

    sumAB = a + b;
    sumCD = c + d;

    if(sumCD == 0) {
        printf("Division by zero error.\n");
        return -1;
    }

    result = sumAB / sumCD;
    printf("The result is: %.2f\n", result);

    return 0;
}