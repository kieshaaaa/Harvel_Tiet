#include <stdio.h>

int addTwoNumbers(int x, int y) {
    return x + y;
}

int main() {
    int sum = addTwoNumbers(10, 20);
    
    printf("Sum is: %d\n", sum);

    return 0;
}