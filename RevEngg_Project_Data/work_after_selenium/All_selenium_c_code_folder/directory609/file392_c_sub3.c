#include <stdio.h>

int main() {
    float radius;
    printf("Enter the radius of the circle: ");
    scanf("%f", &radius);
    
    float circumference = 2 * 3.14159 * radius;
    
    printf("Circumference of the circle: ");
    printf("%.2f\n", circumference);
    return 0;
}