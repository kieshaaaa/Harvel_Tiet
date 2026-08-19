#include <stdio.h>

int main() {
    float a, b, c, d, result;

    printf("Input four numbers (a, b, c, d): ");
    scanf("%f %f %f %f", &a, &b, &c, &d);

    if((c + d) == 0) {
        printf("Error: division by zero.\n");
        return -1;
    } else {
        result = (a + b) / (c + d);
        printf("The calculation result is: %.2f\n", result);
    }

    return 0;
}