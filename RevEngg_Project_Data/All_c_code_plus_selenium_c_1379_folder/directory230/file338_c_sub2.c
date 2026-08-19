#include<stdio.h>

int main() {
    int a, b;
    
    printf("Enter two numbers separated by space: ");
    scanf("%d %d", &a, &b);
    
    printf("The result of Addition is: %d\n", a + b);
    printf("The result of Subtraction is: %d\n", a - b);
    printf("The result of Multiplication is: %d\n", a * b);
    printf("The result of Division is: %d\n", a / b);
    printf("The result of Modulus is: %d\n", a % b);
    
    return 0;
}