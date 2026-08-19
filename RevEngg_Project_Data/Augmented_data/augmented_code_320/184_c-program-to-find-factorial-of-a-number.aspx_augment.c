/* Source: https://www.includehelp.com/c-programs/c-program-to-find-factorial-of-a-number.aspx */
/*C program to find factorial of a number.*/
 
#include <stdio.h>
 
int main()
{
    int n, i;
    long int factorial;
  
    printf("Enter an integer number: ");
    scanf("%d",&n);
  
    /*product of numbers from num to 1*/
    factorial=1;
    i = n;
    while(i >= 1) {
        factorial = factorial * i;
        i--;
    }
         
    printf("\nFactorial of %d is = %ld",n,factorial);
      
    return 0;
}