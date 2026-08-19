#include<stdio.h>

int increment(int x);

int main() {
    int a = 15;
    printf("Before calling the function, a = %d\n", a);
    a = increment(a); // Using the function to indirectly modify 'a'
    printf("After calling the function, a = %d\n", a);
    return 0;
}

int increment(int x) {
    return x + 1; // Increment and return the new value
}