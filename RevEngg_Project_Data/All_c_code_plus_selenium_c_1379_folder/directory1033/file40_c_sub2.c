#include <stdio.h>

int addTwoNumbers(int x, int y) {
    return x + y;
}

int main() {
    int a = 10, b = 20;
    
    int result = addTwoNumbers(a, b);
    printf("Sum is: %d\n", result);

    return 0;
}