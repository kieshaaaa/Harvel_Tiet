/* Source: https://www.includehelp.com/c-programs/find-the-first-repeated-element-in-an-array.aspx */
#include <stdio.h>

int main()
{
	int arr[5];
	int i,j,n=5;
	int ind,ele; //to store index & element
	
	//read array elements
	for(i=0; i<n; i++)
	{
		printf("Enter element %d: ",i+1);
		scanf("%d",&arr[i]);
	}
	
	printf("Array elements are: ");
	for(i=0; i<n; i++)
		printf("%d ",arr[i]);
	
	printf("\n");
	ind=-1;
	//check first repeated element
	for(i=0; i<n; i++)
	{
		for(j=i+1; j<n; j++)
		{
			if(arr[i]==arr[j])
			{
				ele=arr[j];
				ind=j;
				break;
			}				
		}
		
		if(ind != -1)
			break;
	}
	if(ind!=-1)
		printf("%d repeated @ %d index\n",ele,ind);
	else
		printf("There is no repeated element\n");

	return 0;
}
