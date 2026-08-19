/* Source: https://www.includehelp.com/c-programs/define-a-macro-to-set-nth-bit-to-zero-in-c.aspx */
#include <stdio.h>

#define SETPIN(PIN,N) (PIN &= ~(1<<N))

int main(){
	
	unsigned char val = 0xFF;
	unsigned char bit = 2;
	
	printf("val = %X\n",val);
	
	//SET bit number 2 to zero 
	SETPIN(val,bit);
	printf("Aftre setting  bit %d to zero, val = %X\n", bit, val);
	
	return 0;	
}
