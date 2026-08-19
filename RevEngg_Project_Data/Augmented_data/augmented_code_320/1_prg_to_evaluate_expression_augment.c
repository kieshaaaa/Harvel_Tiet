/*Write a C program to evaluate the expression (a + b) * c / d (e - f). Get the values of a, b, c,
d, e and f from the user. Explain the steps to achieve the result.*/

#include<stdio.h>
int main()
{
    int num1,num2,num3,num4,num5,num6,result;
    printf("Enter the value of num1: \n");
    scanf("%d", &num1);
    
    printf("Enter the value of num2: \n");
    scanf("%d", &num2);
    
    printf("Enter the value of num3: \n");
    scanf("%d", &num3);
    
    printf("Enter the value of num4: \n");
    scanf("%d", &num4);
    
    printf("Enter the value of num5: \n");
    scanf("%d", &num5);
    
    printf("Enter the value of num6: \n");
    scanf("%d", &num6);
    
    result = (num1 + num2) * num3 / num4 * (num5 - num6);
    
    printf("The value of result is: %d \n",result);
}