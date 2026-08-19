#include <stdio.h>

int main() {
    float a, b, c, d, result;

    printf("Enter four numbers (a, b, c, d): ");
    scanf("%f %f %f %f", &a, &b, &c, &d);

    if(c + d != 0) {
        result = (a + b) / (c + d);
        printf("Result: %.2f\n", result);
    } else {
        printf("Cannot divide by zero.\n");
        return -1;
    }

    return 0;
}