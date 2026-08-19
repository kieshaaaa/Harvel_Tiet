#include <stdio.h>
#include "if_else.h"

int main() {

    int num1 = 3;
    int num2 = 4;
    int num3 = 7;

    int result = if_else(num1,num2,num3);
    
    printf("  %d\n", result);

    return 0;

}

