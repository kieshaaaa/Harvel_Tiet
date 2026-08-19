/* Source: https://www.includehelp.com/c-programs/print-argument-variable-name-value-using-macro-in-c.aspx */
#include <stdio.h>

#define SQUARE(N)	printf("Square of " #N " is = %d\n",(N*N))
#define CUBE(N)		printf("Cube   of " #N " is = %d\n",(N*N*N))

int main()
{
	int number = 10;
	
	//passing variable name 
	SQUARE(number);
	CUBE(number);
	
	//passing values
	SQUARE(10);
	CUBE(10);

	return 0;
}
