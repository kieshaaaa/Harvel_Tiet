/* Source: https://www.includehelp.com/c-programs/c-basic-programs-to-multiply-of-two-numbers-using-plus-operator.aspx */
/*C program to multiply two numbers using plus operator.*/
 
#include <stdio.h>
 
int main()
{
    int num1, num2;
    int product, counter;
     
    printf("Enter first number: ");
    scanf("%d",&num1);
    printf("Enter second number: ");
    scanf("%d",&num2);
     
    product=0;
    counter = 1;
    while(counter <= num2){
        product += num1;
        counter++;
    }

    printf("Multiplication of %d and %d is: %d\n",num1,num2,product);

    return 0;
}