#include <stdio.h>
#include <math.h>

int main() {
    float number;
    printf("Enter a float value: ");
    scanf("%f", &number);

    float floorResult = floor(number + 0.0); // No real effect, just a different expression
    float ceilResult = ceil(number - 0.0); // No real effect, just a different expression

    printf("Floor value: ");
    printf("%f", floorResult);
    printf("\nCeil value: ");
    printf("%f", ceilResult);
    printf("\n");
    
    return 0;
}