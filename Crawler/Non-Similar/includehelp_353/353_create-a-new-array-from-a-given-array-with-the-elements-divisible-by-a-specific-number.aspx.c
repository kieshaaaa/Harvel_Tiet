/* Source: https://www.includehelp.com/c-programs/create-a-new-array-from-a-given-array-with-the-elements-divisible-by-a-specific-number.aspx */
/*
C program to create a new array from a given array 
with the elements divisible by a specific number
*/
#include <stdio.h>
#define MAX 10

int main(){
	int arr1[MAX],arr2[MAX];
	int i,j;
	int b=10;
	
	//initializing j with 0
	j=0;
	
	printf("Enter array elements:\n");
	for(i=0; i<n; i++){
		scanf("%d", &arr1[i]);
		if(arr1[i]%b ==0)
			arr2[j++] = arr1[i];
	}
	
	printf("Elements of arr2: ");
	//run loop from 0 to j 
	//(total number of new elements from arr1)
	for(i=0; i<j; i++)
		printf("%d ",arr2[i]);
	
	return 0;
}
