// function.c

#include <stdio.h>
#include "array.h"

void processArray(int arr[4]) {
	arr[3] = arr[1] + arr[0] + arr[2];
}

