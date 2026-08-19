#include <stdio.h>
#include <math.h>

int main() {
    float inputValue;
    printf("Enter a float value: ");
    scanf("%f", &inputValue);

    float resultFloor = floor(inputValue);
    float resultCeil = ceil(inputValue);

    printf("Resulting Floor value: ");
    printf("%f", resultFloor);
    printf("\nResulting Ceil value: ");
    printf("%f", resultCeil);
    printf("\n");
    
    return 0;
}