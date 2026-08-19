#include <stdio.h>
#include "addition.h"

int main() {

    int num1 = 6;
    int num2 = 7;
    int num3 = 8;

    printf("Enter two number");
    
    int result = add(num1,num2,num3);
    
    printf("Sum of %d  %d %d is %d\n", num1, num2, num3, result);

    return 0;

}

