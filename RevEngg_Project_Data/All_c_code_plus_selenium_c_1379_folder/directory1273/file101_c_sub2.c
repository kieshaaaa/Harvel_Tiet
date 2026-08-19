#include <stdio.h>

int main() {
    float num1, num2, num3, num4, divisionResult;

    printf("Enter four numbers (num1, num2, num3, num4): ");
    scanf("%f %f %f %f", &num1, &num2, &num3, &num4);

    if(num3 + num4 != 0) {
        divisionResult = (num1 + num2) / (num3 + num4);
        printf("Result: %.2f\n", divisionResult);
    } else {
        printf("Cannot divide by zero.\n");
        return -1;
    }

    return 0;
}