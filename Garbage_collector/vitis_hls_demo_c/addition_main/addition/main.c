#include <stdio.h>
#include "addition.h"

int main() {

    int num1 = 3;
    int num2 = 4;

    printf("Enter two number");
    
    int result = add(num1,num2);
    
    printf("Sum of %d and %d is %d\n", num1, num2, result);

    return 0;

}
