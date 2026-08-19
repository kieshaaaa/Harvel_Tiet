/* Source: https://www.includehelp.com/c-programs/c-program-to-get-minimum-bits-to-store-integer.aspx */
/*Program to get minimum number of bits to store an integer number.*/

#include <stdio.h>

/*function declaration
	* name		: countBits
	* Desc		: to get bits to store an int number
	* Parameter	: int 
	* return	: int 
*/
int countBits(int);
int main()
{
	int num;
	printf("Enter an integer number :");
	scanf("%d",&num);

	printf("Total number of bits required = %d\n",countBits(num));
	return 0;
}

int countBits(int n)
{
	int count=0,i=0;
	if(n==0) return 0;
	while(i < 32)
	{	
		if( (1 << i) & n)
			count=i;
		i++;
	}
	return ++count;
}