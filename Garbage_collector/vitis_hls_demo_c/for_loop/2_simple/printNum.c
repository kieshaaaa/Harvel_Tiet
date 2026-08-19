#include <stdio.h>
#include "printNum.h"

void printNumbers(int start, int end) {
	int i;
	int j;
	int K;
    for (i = start; i <= end; i++) {
        printf("%d ", i);
    }
    for (j = start; j <=end; j++) {
    	printf("%d", i);
        printf("%d ", j);
    } 
    for (K = start; K <=end; K++) {
            printf("%d ", K);
     }
    printf("\n");
}
