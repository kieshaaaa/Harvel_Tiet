/* Source: https://www.includehelp.com/c-programs/c-program-get-remainder-without-using-operator.aspx */
/*
    * Program to get remainder without using % operator.
*/
 
#include <stdio.h>
int main()
{
    int a,b,rem;
    printf("Enter first number :");
    scanf("%d",&a);
    printf("Enter second number :");
    scanf("%d",&b);
 
    rem=a-(a/b)*b;
 
    printf("Remainder is = %d\n",rem);
    return 0;
}
