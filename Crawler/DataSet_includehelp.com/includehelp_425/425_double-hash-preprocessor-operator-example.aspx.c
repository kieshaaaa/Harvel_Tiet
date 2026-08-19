/* Source: https://www.includehelp.com/c-programs/double-hash-preprocessor-operator-example.aspx */
#include <stdio.h>

#define VAR(X,Y)	X##Y

int main(){
	
	int ab = 100;
	printf("%d\n",VAR(a,b));
	
	return 0;
}
