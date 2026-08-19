#include <stdio.h>
#include "printNum.h"

void printNumbers(int start, int end) {
	int i = start;
	while (i <= end) {
        	
       		 printf("%d ", i);
		i = i + 1;
    }
    printf("\n");
}
