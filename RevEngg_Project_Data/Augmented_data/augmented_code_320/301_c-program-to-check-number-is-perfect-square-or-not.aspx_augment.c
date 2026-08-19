/* Source: https://www.includehelp.com/c-programs/c-program-to-check-number-is-perfect-square-or-not.aspx */
/*C program to check number is perfect square or not.*/
 
#include <stdio.h>
#include <math.h>
 
int main()
{
    int number;
    int integerPart;
    float floatPart;
  
    printf("Enter an integer number: ");
    scanf("%d",&number);
  
    floatPart=sqrt((double)number);
    integerPart=floatPart;
 
    if(integerPart==floatPart)
        printf("%d is a perfect square.",number);
    else
        printf("%d is not a perfect square.",number);
      
    return 0;
}