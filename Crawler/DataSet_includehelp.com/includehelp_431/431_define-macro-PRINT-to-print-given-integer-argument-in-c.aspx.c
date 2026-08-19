/* Source: https://www.includehelp.com/c-programs/define-macro-PRINT-to-print-given-integer-argument-in-c.aspx */
#include <stdio.h>

#define PRINT(val) (printf("value is: %d\n",val))

//Main code
int main(){
	
	PRINT(10);
	PRINT(100);
	PRINT(-12);
	PRINT(0);
	
	return 0;	
}
