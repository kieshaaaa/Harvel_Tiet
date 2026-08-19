/* Source: https://www.includehelp.com/c-programs/define-macros-for-YES-and-NO-constants-using-define.aspx */
#include <stdio.h>

#define	YES	1
#define NO	0

//function to check and return YES or NO
//for EVEN or ODD
int checkEvenODD(int num)
{
	if( num%2 == 0 )
		return YES;
	else
		return NO;
}

//Main code
int main(){
	
	int n;
	
	n = 10;
	if( checkEvenODD(n) == YES )
		printf("%d is an EVEN number\n",n);
	else
		printf("%d is an ODD number\n",n);

	n = 11;
	if( checkEvenODD(n) == YES )
		printf("%d is an EVEN number\n",n);
	else
		printf("%d is an ODD number\n",n);	
	
	return 0;
}
