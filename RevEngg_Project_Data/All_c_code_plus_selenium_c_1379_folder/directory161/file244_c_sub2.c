#include<stdio.h>

int addFive(int x);

int main() {
    int a = 10;
    printf("Before calling the function, a = %d\n", a);
    a = addFive(a); // Assign the returned value to 'a' to reflect the change.
    printf("After calling the function, a = %d\n", a);
    return 0;
}

int addFive(int x) {
    x += 5;
    return x; // Return the modified value.
}