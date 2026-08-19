// main.c

#include <stdio.h>
#include "array.h"


int main() {
    int myArray[12] = {1,2,3,4,5,6,7,8,9,10,11,12};
    int myArray2[10] = {1,2,3,4,5,6,7,8,9,10};
    int myArray3[10] = {1,2,3,4,5,6,7,8,9,10};
    processArray(myArray,myArray2,myArray3);  // Call the function from the other file

    return 0;
}

