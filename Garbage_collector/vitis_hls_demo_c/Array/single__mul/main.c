// main.c

#include <stdio.h>
#include "array.h"


int main() { 
	int array[5];
	array[0] = 1;
	array[1] = 2;
	array[2] = 3;
	array[3] = 4;
	array[4] = 5;
	processArray(array);
    return 0;
}

