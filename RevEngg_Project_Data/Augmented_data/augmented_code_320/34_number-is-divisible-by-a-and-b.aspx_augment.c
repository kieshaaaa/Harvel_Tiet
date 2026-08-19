/* Source: https://www.includehelp.com/c-programs/number-is-divisible-by-a-and-b.aspx */
/** 
C program to check given number
is divisible by A and B
Here, A and B are integers
*/
 
#include <stdio.h>

//function will return 1 if given number is
//divisible by both numbers a and b
int checkDivisibility(int num, int a , int b)
{
	//we have to check whether num is
	//divisible by a and b
	if( num%a==0 && num%b==0 )
		return 1;
	else
		return 0;
}

// main function
int main()
{
  int number=0,divisor1=0,divisor2=0;
    
  printf("Enter any integer number : ");
  scanf("%d",&number);
    
  printf("Enter first divisor : ");
  scanf("%d",&divisor1);
    
  printf("Enter second divisor : ");
  scanf("%d",&divisor2);

	if(checkDivisibility(number,divisor1,divisor2))
		printf("%d is divisible by %d and %d\n",number,divisor1,divisor2);
	else
		printf("%d is not divisible by %d and %d\n",number,divisor1,divisor2);
	
    return 0;
}