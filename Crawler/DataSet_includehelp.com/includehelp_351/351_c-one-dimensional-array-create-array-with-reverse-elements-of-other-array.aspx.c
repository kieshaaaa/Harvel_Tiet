/* Source: https://www.includehelp.com/c-programs/c-one-dimensional-array-create-array-with-reverse-elements-of-other-array.aspx */
/*C program to create array with reverse elements 
of one dimensional array.*/

#include <stdio.h>

//defining -  MAX to declare array
//for maximum of 100 elements
#define MAX 100

int main()
{
	//declaring arrays 'arr' for input array
	//and 'revArr' for output array with reverse elements
	int arr[MAX],revArr[MAX];
	//loop counters
	int i,j
	
	//'n' as number of array elements
	int n;
	
	//read total number of elements
	printf("Enter total number of elements: ");
	scanf("%d",&n);
	
	//read array elements
	printf("Enter array elements:\n");
	for(i=0;i< n;i++)
	{
		printf("Enter element %d: ",i+1);
		scanf("%d",&arr[i]);
	}
	
	//store reverse values of arr into revArr
	for(i=(n-1),j=0; i>=0; i--,j++)
	{
		revArr[j]=arr[i];
	}
	
	printf("\nArray elements after reverse:\n");
	for(i=0;i< n;i++)
	{
		printf("%d\n",revArr[i]);
	}
	
	return 0;
}
