#include <stdio.h>
#include "printNum.h"

void printNumbers(int start, int end) {
    for (int i = start; i <= end; i++) {
        printf("%d ", i);
    }
    printf("\n");
}
