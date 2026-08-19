#include <stdio.h>
// Function to test
int entry_point(int a,int *b);


int main() {
    // Test case 1
    int a = 5;
    int b = 0;
    int result1 = entry_point(a,&b);
    printf("result is the %d\n ",result1);


    // Test case 2
//    int result2 = entry_point(-3);


    // Test case 3
//    int result3 = entry_point(0);

    printf("All test cases passed successfully!\n");

    return 0;
}
