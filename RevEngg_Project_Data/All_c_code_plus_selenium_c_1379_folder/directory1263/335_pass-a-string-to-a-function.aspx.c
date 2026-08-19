/* Source: https://www.includehelp.com/c-programs/pass-a-string-to-a-function.aspx */
/*  
C program to pass a string to a function
*/

#include <stdio.h>

void Strfun(char *ptr)
{
    printf("The String is : %s",ptr);
}

// main function
int main()
{
	// Declare a buffer of type "char"
	char buff[20]="Hello Function";
	
	// Passing string to Function
	Strfun(buff);
	
	return 0;
}
