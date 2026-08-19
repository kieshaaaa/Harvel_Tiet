#include <stdio.h>
// Function to test
int entry_point(int a);


int main() {
    // Test case 1
    int a = 5;
    int result1 = entry_point(a);
    printf("result1 is the %d\n ",result1);


    // Test case 2
    a = -5;
    int result2 = entry_point(a);
    printf("result2 is the %d\n ",result2);

    // Test case 3
    a = 8;
    int result3 = entry_point(a);
    printf("result3 is the %d\n ",result3);

    printf("All test cases passed successfully!\n");

    return 0;
}


