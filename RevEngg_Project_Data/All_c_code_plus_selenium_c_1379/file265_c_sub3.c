#include<stdio.h>

void subtract(int x, int y) {
    x -= 1;
    y -= 1;
    printf("Inside function x = %d , y = %d\n", x, y);
}

int main() {
    int a = 10, b = 20;
    printf("Before calling the function, a = %d and b = %d\n", a, b);
    subtract(a, b);
    printf("After calling the function, a = %d and b = %d\n", a, b);
    return 0;
}