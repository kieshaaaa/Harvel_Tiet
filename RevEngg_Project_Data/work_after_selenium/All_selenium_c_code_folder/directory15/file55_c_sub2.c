#include <stdio.h>
#include <math.h> // For floor function

int main() {
    int dividend, divisor;
    float divisionResult;
    printf("Enter first number: ");
    scanf("%d", &dividend);
    printf("Enter second number: ");
    scanf("%d", &divisor);

    divisionResult = (float)dividend / divisor;
    int floorValue = floor(divisionResult);
    int remainder = dividend - (floorValue * divisor);

    printf("Remainder is = %d\n", remainder);
    return 0;
}