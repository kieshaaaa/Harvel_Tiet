/* Source: https://www.includehelp.com/c-programs/input-hexadecimal-value-in-c.aspx */
#include <stdio.h>

int main()
{
	unsigned char var1;
	unsigned short var2;
	unsigned int var3;
	
	printf("Enter 1 byte  value in Hexadecimal: ");
	scanf("%x", &var1);
	printf("Enter 2 bytes value in Hexadecimal: ");
	scanf("%x", &var2);
	printf("Enter 4 bytes value in Hexadecimal: ");
	scanf("%x", &var3);	
	
	printf("Value of var1 in HEX: %X, Decimal: %d\n", var1,var1);
	printf("Value of var2 in HEX: %X, Decimal: %d\n", var2,var2);
	printf("Value of var3 in HEX: %X, Decimal: %d\n", var3,var3);
	
	return 0;
}
