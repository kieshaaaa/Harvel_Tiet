#include <stdio.h>
#include "printNum.h"

void printNumbers(int start, int end) {
    for (int i = start; i <= end; i++) {
        for (int j = i; j <= end; j++) {
        	for (int k = 1; k <= end; k++) {
        		printf("%d ", k);
        	}
        	printf("%d ", j);
        	printf("%d ", i);
        }
    }
    printf("\n");
}
