#include <stdio.h>

int main() {
    float x1, x2, x3, x4, calcResult;

    printf("Input four numbers (x1, x2, x3, x4): ");
    scanf("%f %f %f %f", &x1, &x2, &x3, &x4);

    if((x3 + x4) == 0) {
        printf("Error: division by zero.\n");
        return -1;
    } else {
        calcResult = (x1 + x2) / (x3 + x4);
        printf("The calculation result is: %.2f\n", calcResult);
    }

    return 0;
}