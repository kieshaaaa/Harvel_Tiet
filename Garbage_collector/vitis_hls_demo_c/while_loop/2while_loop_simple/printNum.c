#include <stdio.h>
#include "printNum.h"

void printNumbers(int start, int end) {
	int i = start;
	int j = start;
	while (i <= end) {
        	printf("%d ", i);
		i++;
	}
	while (j <=end) {
        	printf("%d ", j);
		j++;
	}	 
    printf("\n");
}
