//Write a C program to perform various arithemetic operations
//Addition, Subtraction, Multiplication, Division and Modulus
#include<stdio.h>
int main()
{
    int sum, difference, product, quotient, remainder, num1, num2;
    
    printf("Enter the first number num1: \n");
    scanf("%d", &num1);
    
    printf("Enter the second number num2: \n");
    scanf("%d", &num2);
    
    sum = num1 + num2;
    difference = num1 - num2;
    product = num1 * num2;
    quotient = num1 / num2;
    remainder = num1 % num2;
    
    printf("The value of addition is: %d \n", sum);
    printf("The value of subtraction is: %d \n", difference); 
    printf("The value of Multiplication is: %d \n", product);
    printf("The value of Division is: %d \n", quotient);
    printf("The value of Modulus is: %d \n", remainder);
}