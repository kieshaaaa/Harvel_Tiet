#include <stdio.h>

int main() {
    float dimension, result;
    
    printf("Enter the side length of the cube: ");
    scanf("%f", &dimension);
    
    float temp = dimension * dimension;
    result = temp * 6;
    
    printf("Surface area of the cube: ");
    printf("%.2f\n", result);
    
    return 0;
}