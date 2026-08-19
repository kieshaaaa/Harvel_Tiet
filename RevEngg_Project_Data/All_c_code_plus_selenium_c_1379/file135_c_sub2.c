#include <stdio.h>

int main() {
    int a = 1, b = 2, c = 0;
    // Comma operator in a conditional statement
    if (a < b, b > c) { // Evaluates a < b, discards it, then evaluates b > c and proceeds based on it
        printf("b is greater than c\n");
    } else {
        printf("c is greater than or equal to b\n");
    }
    return 0;
}