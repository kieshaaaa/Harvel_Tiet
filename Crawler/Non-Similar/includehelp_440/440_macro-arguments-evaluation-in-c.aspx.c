/* Source: https://www.includehelp.com/c-programs/macro-arguments-evaluation-in-c.aspx */
#include <stdio.h>

#define CALC(X,Y) (X*Y)

int main()
{ 
	printf("%d\n",CALC(1+2, 3+4));
	return 0;
}
