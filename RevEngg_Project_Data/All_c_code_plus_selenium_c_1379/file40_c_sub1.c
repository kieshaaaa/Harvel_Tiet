#include <stdio.h>

int addTwoNumbers(int x, int y) {
    return x + y;
}

int main() {
    int a = 10, b = 20, sum;
    
    sum = addTwoNumbers(a, b);
    
    int result = sum;
    printf("Sum is: %d\n", result);

    return 0;
}