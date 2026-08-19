#include <stdio.h>

int main() {
    float edge, area;
    
    printf("Enter the side length of the cube: ");
    scanf("%f", &edge);
    
    area = edge * edge;
    area = area * 6;
    
    printf("Surface area of the cube: ");
    printf("%.2f\n", area);
    
    return 0;
}