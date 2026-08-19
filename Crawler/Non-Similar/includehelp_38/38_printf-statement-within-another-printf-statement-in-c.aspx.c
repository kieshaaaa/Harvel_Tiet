/* Source: https://www.includehelp.com/c-programs/printf-statement-within-another-printf-statement-in-c.aspx */
#include <stdio.h>

int main(void)
{
	printf("%d", printf ("Hello"));
	return 0;
}
