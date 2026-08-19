/* Source: https://www.includehelp.com/c-programs/subtract-two-integers-without-using-minus-operator.aspx */
#include<stdio.h>

int main()
{
	int a,b,sub;
	
	//input numbers
	printf("Enter first number: ");
	scanf("%d",&a);
	printf("Enter second number: ");
	scanf("%d",&b);
	
	//find subtraction using ~
	sub=a+~b+1;
	
	printf("subtraction of %d-%d=%d",a,b,sub);
	
	return 0;
}
