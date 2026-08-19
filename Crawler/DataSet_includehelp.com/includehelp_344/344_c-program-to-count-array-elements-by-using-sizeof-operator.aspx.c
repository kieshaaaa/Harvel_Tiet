/* Source: https://www.includehelp.com/c-programs/../code-snippets/c-program-to-count-array-elements-by-using-sizeof-operator.aspx */
#include <stdio.h>
int main()
{
	int arr[]={10,20,30,40,50};
	int n;
	
	n=sizeof(arr)/sizeof(int);
	
	printf("Number of elemenets are: %d\n",n);
	
	return 0;
}
