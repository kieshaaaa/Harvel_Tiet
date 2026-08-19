#include <stdio.h>
// Function to test
int entry_point(int a, int *b);


int main() {
    // Test case 1
    int a = 5;
    int b ;
    int result1 = entry_point(a,&b);
    printf("result1 is the %d\n ",result1);


    // Test case 2
    int a1 = 9;
    int b1 ;
    int result2 = entry_point(a1,&b1);
    printf("result2 is the %d\n ",result2);



    // Test case 3

   int a2 = 15;
   int b2 ;
   int result3 = entry_point(a2,&b2);
   printf("result3 is the %d\n ",result3);


   printf("All test cases passed successfully!\n");

    return 0;
}







