#include<stdio.h>

void attemptSwap(int x, int y);

int main() {
    int a = 5, b = 8;
    printf("Before calling the function, a = %d and b = %d\n", a, b);
    attemptSwap(a, b);
    printf("After calling the function, a = %d and b = %d\n", a, b);
    return 0;
}

void attemptSwap(int x, int y) {
    int temp = x;
    x = y;
    y = temp;
    printf("Inside function x = %d , y = %d\n", x, y);
}