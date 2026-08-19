/* Source: https://www.includehelp.com/c-programs/print-error-message-from-any-function-with-function-name-line-number-in-c.aspx */
#include <stdio.h>

float devide(int a, int b)
{
	float result;
	
	if(b!=0){
		result = (float)a/(float)b;
	}
	else{
		result=0;
		printf("Error at line %d in function \"%s\"\n",((__LINE__)-3),__func__);
		//ERROR at 3 lines above: ((__LINE__)-3)
	}

	return result;
}

int main()
{
	printf("%f\n",devide(10,3));
	printf("%f\n",devide(10,0));	
	return 0;
}
