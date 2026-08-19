#include <stdio.h>

int main() {
    float a, b, c, d, result;

    printf("Enter the first number (a): ");
    scanf("%f", &a);
    
    printf("Enter the second number (b): ");
    scanf("%f", &b);
    
    printf("Enter the third number (c): ");
    scanf("%f", &c);
    
    printf("Enter the fourth number (d): ");
    scanf("%f", &d);

    result = a * b * c * d;

    printf("The result is: %.2f\n", result);

    return 0;
}