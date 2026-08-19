// function.c

#include <stdio.h>
#include "array.h"

void processArray(int arr[6]) {
	for(int i = 0;i < 6;i++){
		arr[i] = arr[i] + 2;
	}
}

