#include <stdio.h>

void printArrayElements(int array[], int count) {
    int i;
    for (i = 0; i < count; i++) {
        printf("Array [%d] : ", i);
        printf("%d\n", array[i]);
    }
}

int main() {
    int array[] = {1, 2, 3, 4, 5, 6, 7, 8, 9};
    printArrayElements(array, 9);
    return 0;
}