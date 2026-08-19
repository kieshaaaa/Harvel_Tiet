#include <stdio.h>

void printElement(int index, int value) {
    printf("Array [%d] : ", index);
    printf("%d\n", value);
}

int main() {
    int array[9] = {1, 2, 3, 4, 5, 6, 7, 8, 9};
    for (int i = 0; i < 9; i++) {
        printElement(i, array[i]);
    }
    return 0;
}