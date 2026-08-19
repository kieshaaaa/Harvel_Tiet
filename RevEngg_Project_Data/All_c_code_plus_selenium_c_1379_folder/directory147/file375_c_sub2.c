#include <stdio.h>

int main() {
    float length;
    
    printf("Enter the side length of the cube: ");
    scanf("%f", &length);
    
    float sa = 6;
    sa *= length * length;
    
    printf("Surface area of the cube: ");
    printf("%.2f\n", sa);
    
    return 0;
}