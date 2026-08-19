#include <stdio.h>

int main() {
    float a, b, c, d, e, temp, result;

    printf("Enter five numbers (a, b, c, d, e): ");
    scanf("%f %f %f %f %f", &a, &b, &c, &d, &e);

    if(e == 0) {
        printf("Error: Division by zero is not allowed.\n");
        return 1;
    }

    temp = b * c;
    result = a + temp - d / e;

    printf("The result is: %.2f\n", result);

    return 0;
}