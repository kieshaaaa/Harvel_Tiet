/* Source: https://www.includehelp.com/c-programs/define-a-macro-to-find-total-number-of-elements.aspx */
#include <stdio.h>

#define ARRAY_LEN(ARRAY_NAME, TYPE)(sizeof(ARRAY_NAME)/sizeof(TYPE))

int main()
{
	int iArr[10];
	float fArr[5];
	char cArr[50];
	
	printf("Total elements in iArr: %d\n", ARRAY_LEN(iArr, int));
	printf("Total elements in fArr: %d\n", ARRAY_LEN(fArr, float));
	printf("Total elements in cArr: %d\n", ARRAY_LEN(cArr, char));
	
	return 0;
}
