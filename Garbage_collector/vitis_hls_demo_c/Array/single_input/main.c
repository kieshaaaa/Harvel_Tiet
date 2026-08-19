// main.c

#include <stdio.h>
#include "array.h"


int main() { 
	int array[3];
	array[0] = 5;
	processArray(array);
	array[0] = 4;
	processArray(array);
    return 0;
}

