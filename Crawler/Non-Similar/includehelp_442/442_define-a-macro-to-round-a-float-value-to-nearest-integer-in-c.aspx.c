/* Source: https://www.includehelp.com/c-programs/define-a-macro-to-round-a-float-value-to-nearest-integer-in-c.aspx */
#include <stdio.h>

//Macro
#define round(x) ((x)>=0?(long)((x)+0.5):(long)((x)-0.5))

//Main code 
int main(void)
{
	float val1=10.00f;
	float val2=10.23f;
	float val3=10.50f;
	float val4=10.65f;

	printf("After round val1=%d\n",round(val1));
	printf("After round val2=%d\n",round(val2));
	printf("After round val3=%d\n",round(val3));
	printf("After round val4=%d\n",round(val4));

	return 0;
}
