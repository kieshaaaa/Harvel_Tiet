/* Source: https://www.includehelp.com/c-programs/c-program-to-check-number-is-armstrong-or-not.aspx */
/* C program to check whether a number is armstrong or not */
 
#include <stdio.h>
 
int main()
{
    int num, sum = 0, digit, originalNum;
 
    printf("Enter an integer number: ");
    scanf("%d", &num);
 
    originalNum = num;
 
    for(; num != 0;)
    {
        digit = num % 10;
        sum = sum + (digit * digit * digit);
        num /= 10;
    }  
 
/* checking number is armstrong or not */ 
    if(sum == originalNum)  
        printf("%d is an Armstrong number.", originalNum);
    else
        printf("%d is not an Armstrong number.", originalNum);
 
    return 0;
}