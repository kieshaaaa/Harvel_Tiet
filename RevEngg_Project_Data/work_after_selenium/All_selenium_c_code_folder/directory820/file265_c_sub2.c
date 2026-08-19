#include<stdio.h>

void multiply(int x, int y) {
    x *= 2;
    y *= 3;
    printf("Inside function x = %d , y = %d\n", x, y);
}

int main() {
    int a = 4, b = 5;
    printf("Before calling the function, a = %d and b = %d\n", a, b);
    multiply(a, b);
    printf("After calling the function, a = %d and b = %d\n", a, b);
    return 0;
}