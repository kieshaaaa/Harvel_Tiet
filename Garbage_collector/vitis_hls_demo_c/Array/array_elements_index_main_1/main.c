// main.c

#include <stdio.h>
#include "array.h"


int main() {
    int myArray[6];
    myArray[0] = 1;
    myArray[1] = 2;
    myArray[2] = 3;
    myArray[3] = 4;
    myArray[4] = 5;
    myArray[5] = 6; 

    processArray(myArray);// Call the function Array from the other file
    

    return 0;
}

