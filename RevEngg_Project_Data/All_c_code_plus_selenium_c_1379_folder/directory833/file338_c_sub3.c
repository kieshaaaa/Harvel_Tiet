#include<stdio.h>

int main() {
    int a, b, result;
    
    printf("Enter two integers (a b): ");
    scanf("%d %d", &a, &b);
    
    result = a + b;
    printf("Addition: %d\n", result);
    
    result = a - b;
    printf("Subtraction: %d\n", result);
    
    result = a * b;
    printf("Multiplication: %d\n", result);
    
    if(b != 0) {
        result = a / b;
        printf("Division: %d\n", result);
        result = a % b;
        printf("Modulus: %d\n", result);
    } else {
        printf("Division and Modulus not possible with b = 0\n");
    }
    
    return 0;
}