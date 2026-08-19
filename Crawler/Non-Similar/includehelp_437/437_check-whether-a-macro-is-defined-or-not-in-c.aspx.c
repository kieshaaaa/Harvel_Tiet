/* Source: https://www.includehelp.com/c-programs/check-whether-a-macro-is-defined-or-not-in-c.aspx */
#include <stdio.h>

#define NUM 100

int main()
{
	//checking a defined Macro 
	#ifdef NUM
		printf("Macro NUM is defined, and its value is %d\n",NUM);
	#else
		printf("Macro NUM is not defined\n");
	#endif 

	//checking an undefined Macro 
	#ifdef MAX
		printf("Macro MAX is defined, and its value is %d\n",MAX);
	#else
		printf("Macro MAX is not defined\n");
	#endif     

	return 0;
}
