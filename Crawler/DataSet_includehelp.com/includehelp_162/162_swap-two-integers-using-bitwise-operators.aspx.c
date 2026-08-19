/* Source: https://www.includehelp.com/c-programs/swap-two-integers-using-bitwise-operators.aspx */
#include <stdio.h>

int main()
{   
	int n1,n2;
	printf("enter two numbers\n");
	scanf("%d %d",&n1,&n2);
	printf("before swapping...\n");
	printf("first no is %d, second no %d\n",n1,n2);

	//swapping using bitwise operators

	n1=n1^n2;
	n2=n1^n2;
	n1=n1^n2;

	//n1 & n2 is swapped
	printf("after swapping...\n");
	printf("first no is %d, second no %d\n",n1,n2);

	return 0;
}
