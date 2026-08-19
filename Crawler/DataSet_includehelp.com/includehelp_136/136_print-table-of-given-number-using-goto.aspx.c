/* Source: https://www.includehelp.com/c-programs/print-table-of-given-number-using-goto.aspx */
#include<stdio.h>

int main()
{
	//declare variable
	int count,t,r;

	//Read value of t
	printf("Enter number: ");
	scanf("%d",&t);

	count=1;

	start:
	if(count<=10)
	{
		//Formula of table
		r=t*count;
		printf("%d*%d=%d\n",t,count,r);
		count++;
		goto start;
	} 

	return 0;
}
