#include<stdio.h>

int main() {
    int a, b, addition, subtraction, multiplication, division, modulus;
    
    printf("Enter the first number: ");
    scanf("%d", &a);
    
    printf("Enter the second number: ");
    scanf("%d", &b);
    
    addition = a + b;
    subtraction = a - b;
    multiplication = a * b;
    division = a / b;
    modulus = a % b;
    
    printf("Addition: %d, Subtraction: %d, Multiplication: %d, Division: %d, Modulus: %d\n", addition, subtraction, multiplication, division, modulus);
    
    return 0;
}