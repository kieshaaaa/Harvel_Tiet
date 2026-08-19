/* Source: https://www.includehelp.com/c-programs/define-a-function-like-macro-that-should-use-printf-in-c.aspx */
#include <stdio.h>

#define	SUM(a,b)	(printf("SUM of %d and %d is = %d\n", a, b, a+b))

//Main code
int main(){
	
	//adding 10 and 20
	SUM(10,20);
	//adfing 100 and 200
	SUM(100,200);
	
	return 0;	
}
