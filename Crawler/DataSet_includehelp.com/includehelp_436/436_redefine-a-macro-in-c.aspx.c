/* Source: https://www.includehelp.com/c-programs/redefine-a-macro-in-c.aspx */
#include <stdio.h>

#define NUM 100

int main()
{
	//printing the value of NUM
	printf("NUM: %d\n", NUM);
		
	//redefining the Macor: NUM 
	#undef NUM
	#define NUM 200
	
	//printing the value of NUM 
	printf("NUM: %d\n", NUM);
	
	return 0;
}
