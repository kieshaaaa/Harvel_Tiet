/* Source: https://www.includehelp.com/c-programs/check-whether-a-person-is-eligible-for-voting-or-not.aspx */
#include<stdio.h>

int main()
{
	int a ;
	
	//input age
	printf("Enter the age of the person: ");
	scanf("%d",&a);

	//check voting eligibility
	if (a>=18)
	{
		printf("Eigibal for voting");
	}
	else
	{
		printf("Not eligibal for voting\n");
	}	

	return 0;
}
