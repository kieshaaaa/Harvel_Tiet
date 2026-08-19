#include <stdio.h>
#include "subtraction.h"

int main() {

    int num1 = 3;
    int num2 = 4;

    printf("Enter two number");
    
    int result = sub(num1,num2);
    
    printf("minus of %d and %d is %d\n", num1, num2, result);

    return 0;

}

