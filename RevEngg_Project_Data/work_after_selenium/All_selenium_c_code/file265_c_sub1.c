#include<stdio.h>

void add(int x, int y) {
    x += 5;
    y += 10;
    printf("Inside function x = %d , y = %d\n", x, y);
}

int main() {
    int a = 3, b = 2;
    printf("Before calling the function, a = %d and b = %d\n", a, b);
    add(a, b);
    printf("After calling the function, a = %d and b = %d\n", a, b);
    return 0;
}