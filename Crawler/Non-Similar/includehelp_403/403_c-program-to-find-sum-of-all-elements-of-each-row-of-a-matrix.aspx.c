/* Source: https://www.includehelp.com/c-programs/c-program-to-find-sum-of-all-elements-of-each-row-of-a-matrix.aspx */
#include <stdio.h>

#define MAXROW		10
#define MAXCOL		10

int main()
{
	int matrix[MAXROW][MAXCOL];
	int i,j,r,c;
	int sum,product;
	
	printf("Enter number of Rows :");
	scanf("%d",&r);
	printf("Enter number of Cols :");
	scanf("%d",&c);

	printf("\nEnter matrix elements :\n");
	for(i=0;i< r;i++)
	{
		for(j=0;j< c;j++)
		{
			printf("Enter element [%d,%d] : ",i+1,j+1);
			scanf("%d",&matrix[i][j]);
		}
	}
	printf("\n");
	/*sum of all rows*/
	for(i=0;i< r;i++)
	{
		sum=0;		/*initializing sum*/
		for(j=0;j< c;j++)
		{
			printf("%d\t",matrix[i][j]);	/*print elements*/
			sum		+=	matrix[i][j];
		}
		printf("\tSUM : %d",sum);
		printf("\n");	/*after each row print new line*/		
	}

}
