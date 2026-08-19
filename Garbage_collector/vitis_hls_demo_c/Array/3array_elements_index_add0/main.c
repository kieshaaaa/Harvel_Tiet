// main.c

#include <stdio.h>
#include "array.h"


int main() {
    int myArray[5] = {1,2,3,4,5};
    int myArray2[5] = {6,7,8,9,10};
    int myArray3[5] = {11,12,13,14,15};
    processArray(myArray,myArray2,myArray3);  // Call the function from the other file

    return 0;
}

