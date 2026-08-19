/* Source: https://www.codezclub.com/c-program-to-find-hcf-of-two-numbers/ */
/*   C program to find HCF of two numbers  */

#include <stdio.h>

//function to find HCF of two number
int computeHcf(int num1,int num2)
{
    int temp;

    if(num1==0 || num2==0)
    return 0;
    int i = num2;
    while(i !=0)
    {
        temp = num1%i;
        num1    = i;
        i    = temp;
    }
    return num1;
}
int main()
{
    int num1,num2;
    int hcf;

    printf("Enter first number :: ");
    scanf("%d",&num1);
    printf("\nEnter second number :: ");
    scanf("%d",&num2);

    hcf=computeHcf(num1,num2);
    printf("\nHCF (Highest Common Factor) of %d,%d is: %d\n",num1,num2,hcf);

    return 0;
}