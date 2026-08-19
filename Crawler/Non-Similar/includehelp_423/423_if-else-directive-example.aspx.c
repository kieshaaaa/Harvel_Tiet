/* Source: https://www.includehelp.com/c-programs/if-else-directive-example.aspx */
#include <stdio.h>

#define MAX_GF 20

int main(){
	
	printf("Hello\n");
	#if MAX_GF>=50
		printf("Wau, you may have more than 50 girlfriends\n");
		printf("Code for more than 50 GFs\n");
	#else
		printf("Wau, you may not have more than 50 girlfriends\n");
		printf("Code for less than 50 GFs\n");		
	#endif
	printf("Bye!\n");
	
	return 0;
}
