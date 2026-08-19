#include <stdio.h>

void checkEvenOdd() {
    int numbers[3] = {23, 42, 57};
    int i;

    for (i = 0; i < 3; i++) {
        if (numbers[i] % 2 == 0) {
            printf("%d is even.\n", numbers[i]);
        } else {
            printf("%d is odd.\n", numbers[i]);
        }
    }
}

int main() {
    checkEvenOdd();
    return 0;
}