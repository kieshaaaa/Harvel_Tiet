/* Source: https://www.includehelp.com/c-programs/hash-preprocessor-operator-example.aspx */
#include <stdio.h>

#define STR(X)	#X

int main(){
	
	printf("%s\n",STR(Hello world!));
	printf("%s\n",STR(How are you?));
	printf("%s\n",STR(I love programming!));
	
	return 0;
}
