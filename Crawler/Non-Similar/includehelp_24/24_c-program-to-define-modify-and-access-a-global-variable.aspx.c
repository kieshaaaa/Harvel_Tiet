/* Source: https://www.includehelp.com/c-programs/../code-snippets/c-program-to-define-modify-and-access-a-global-variable.aspx */
#include <stdio.h>

//declaration with initialization
int x=100;

//function to modify value of global variable
void modify_x(int val)
{
	x=val;
}
int main()
{
	printf("1) Value of x: %d\n",x);
	
	//modifying the value of x
	x=200;
	printf("2) Value of x: %d\n",x);
	
	//modifying value from function
	modify_x(300);
	printf("3) Value of x: %d\n",x);
	
	return 0;
}
