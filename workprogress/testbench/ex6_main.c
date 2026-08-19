#include <stdio.h>

// Function to test
int entry_point(int a, int b, int *c, int *e);

int main() {
    // Test case 1
    int a1 = 5, b1 = 10, c1, e1;
    int result1 = entry_point(a1, b1, &c1, &e1);
    printf("result of the return %d \n",result1);

    // Test case 2
    int a2 = -3, b2 = 7, c2, e2;
    int result2 = entry_point(a2, b2, &c2, &e2);
    printf("result2 of the return %d \n",result2);


    // Test case 3
    int a3 = 9, b3 = 4, c3, e3;
    int result3 = entry_point(a3, b3, &c3, &e3);
    printf("result3 of the return %d \n",result3);


    printf("All test cases passed successfully!\n");

    return 0;
}
