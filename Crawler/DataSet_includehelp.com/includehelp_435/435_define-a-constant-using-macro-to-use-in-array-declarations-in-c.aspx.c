/* Source: https://www.includehelp.com/c-programs/define-a-constant-using-macro-to-use-in-array-declarations-in-c.aspx */
#include <stdio.h>

#define MAX 10

int main()
{
	int arr1[MAX];
	int arr2[MAX];
	
	printf("Maximum elements of the array: %d\n",MAX);
	printf("Size of arr1: %d\n",sizeof(arr1));
	printf("Size of arr2: %d\n",sizeof(arr2));
	printf("Total elements  of arr1: %d\n",sizeof(arr1)/sizeof(int));
	printf("Total elements  of arr2: %d\n",sizeof(arr2)/sizeof(int));
		
	return 0;
}
