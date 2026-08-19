/* Source: https://www.includehelp.com/c-programs/c-program-to-print-occurrence-of-a-particular-digit-in-a-number.aspx */
/*C program to print occurrence of a particular digit in a number.*/
 
#include <stdio.h>
 
int main()
{
    int number, tempNumber, targetDigit, count;
    int remainder;
 
    printf("Enter a number: ");
    scanf("%d",&number);
    printf("Enter digit to search: ");
    scanf("%d",&targetDigit);
 
    count=0;
    tempNumber=number;
 
    for(;tempNumber>0;)
    {
        remainder=tempNumber%10;
        if(remainder==targetDigit)
            count++;
        tempNumber/=10;
    }
 
    printf("Total occurrence of digit is: %d in number: %d.",count,number);
     
    return 0;
}