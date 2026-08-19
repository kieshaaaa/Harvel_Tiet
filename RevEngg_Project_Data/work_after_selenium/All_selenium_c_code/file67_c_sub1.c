#include <stdio.h>

int main() {
    float side;
    float perimeter;

    printf("Enter the length of the side: ");
    scanf("%f", &side);

    perimeter = side * 6;
    
    printf("Perimeter of the hexagon: ");
    printf("%.2f\n", perimeter);

    return 0;
}