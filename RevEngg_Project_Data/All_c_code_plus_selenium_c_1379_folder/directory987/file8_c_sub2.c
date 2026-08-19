#include <stdio.h>

void findMinimum() {
    int array[6] = {22, 45, 3, 8, 19, 12};
    int min = array[0];
    int i;

    for (i = 1; i < 6; i++) {
        if (array[i] < min) {
            min = array[i];
        }
    }

    printf("The minimum element is: %d\n", min);
}

int main() {
    findMinimum();
    return 0;
}