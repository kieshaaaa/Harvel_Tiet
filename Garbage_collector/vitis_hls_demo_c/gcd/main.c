#include <stdio.h>
#include "gcd.h" // Include the header file 
 
#define NUM1 4
#define NUM2 10

int main() {
   
    printf("Enter two number: ");

    int result = gcd(NUM1, NUM2); // Call the GCd function 

    printf("GCD of %d and %d is %d \n",NUM1, NUM2, result);

    return 0;
 
}
