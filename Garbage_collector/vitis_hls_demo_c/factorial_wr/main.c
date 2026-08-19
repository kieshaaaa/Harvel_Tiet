#include <stdio.h>
#include "factorial.h" // Include the header file

#define NUM 5

int main() {
    
    printf("Enter the number: ");
    
    int result = factorial(NUM);  //Call the factorial function

    printf("Factorial of %d is %d\n", NUM, result );

    return 0;

}
