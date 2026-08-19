#include <stdio.h>
#include <math.h>

int main() {
    float value;
    printf("Enter a float value: ");
    scanf("%f", &value);

    float floorValue = floor(value);
    float ceilValue = ceil(value);

    printf("Floor value: ");
    printf("%f", floorValue);
    printf("\nCeil value: ");
    printf("%f", ceilValue);
    printf("\n");
    
    return 0;
}