/* Source: https://www.includehelp.com/c-programs/c-program-to-check-number-is-prime-or-not.aspx */
/*Program to check entered number is whether prime or not.*/
 
#include <stdio.h>
 
int main()
{
    int counter;
    int num;
    unsigned char isNotPrime=0;
 
    printf("Enter an integer number : ");
    scanf("%d",&num);
 
    counter = 2;
    while(counter <= (num/2))
    {
        if(num%counter ==0)
        {
            isNotPrime=1;
            break;
        }
        counter++;
    }
     
    if(isNotPrime==0)
        printf("\n%d is a prime number.",num);
    else
        printf("\n%d is not a prime number.",num);
 
    return 0;
}