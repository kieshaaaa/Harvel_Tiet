/* Source: https://www.includehelp.com/c-programs/print-ascii-value-of-a-character.aspx */
#include <stdio.h>

int main()
{
	char ch;

	//input character
	printf("Enter the character: ");
	scanf("%c",&ch);

	printf("ASCII is = %d\n", ch);
	return 0;
}
