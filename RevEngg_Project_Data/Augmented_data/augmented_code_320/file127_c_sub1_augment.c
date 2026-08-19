#include <stdio.h>

int main() {
    float num1, num2, num3, num4, product;

    printf("Enter the first number (num1): ");
    scanf("%f", &num1);
    
    printf("Enter the second number (num2): ");
    scanf("%f", &num2);
    
    printf("Enter the third number (num3): ");
    scanf("%f", &num3);
    
    printf("Enter the fourth number (num4): ");
    scanf("%f", &num4);

    product = num1 * num2 * num3 * num4;

    printf("The result is: %.2f\n", product);

    return 0;
}