#include <stdio.h>

int main() {
    int array[9] = {1, 2, 3, 4, 5, 6, 7, 8, 9};
    for (int i = 0; i < 9; i++) {
        printf("Array [%d] : ", i);
        printf("%d\n", array[i]);
    }
    return 0;
}