/* Source: https://www.codezclub.com/c-to-multiply-two-numbers-using-plus-operator/ */
/*  C program to multiply two numbers using plus operator  */

#include <stdio.h>

int main()
{
    int num1, num2;
    int product, counter;

    printf("Enter first number:: ");
    scanf("%d",&num1);
    printf("\nEnter second number:: ");
    scanf("%d",&num2);

    product = 0;
    counter = 1;
    while(counter <= num2){
        product += num1;
        counter++;
    }
    printf("\nMultiplication of %d and %d is: %d\n",num1,num2,product);
     return 0;
}