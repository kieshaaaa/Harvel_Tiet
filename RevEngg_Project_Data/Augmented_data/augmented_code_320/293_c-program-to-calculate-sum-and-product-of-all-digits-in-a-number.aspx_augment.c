/* Source: https://www.includehelp.com/c-programs/c-program-to-calculate-sum-and-product-of-all-digits-in-a-number.aspx */
/* program to find sum and product of all digits of a number.*/
 
#include <stdio.h>
  
int main()
{
    int num;
    int digit, sum, product;
     
    printf("\nEnter an integer number :");
    scanf("%d",&num);
  
    /*Calculating Sum and Product*/
    sum=0;
    product=1;
     
    for(;num>0;)
    {
        digit=num%10; /*get digit*/
        sum+=digit;
        product*=digit;
        num=num/10;
    }
     
    printf("\nSUM of all Digits is : %d",sum);
    printf("\nPRODUCT of all digits: %d",product);
     
    return 0;
}