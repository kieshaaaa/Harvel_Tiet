#include <stdio.h>

int main() {
    int elements[20], total, swap, i, j;
    printf("Enter the number of elements: ");
    scanf("%d", &total);

    for(i = 0; i < total; i++) {
        printf("Enter element %d: ", i + 1);
        scanf("%d", &elements[i]);
    }

    for(i = 1; i < total; i++) {
        for(j = i; j > 0 && elements[j - 1] > elements[j]; j--) {
            swap = elements[j];
            elements[j] = elements[j - 1];
            elements[j - 1] = swap;
        }
    }

    printf("Sorted elements: ");
    for(i = 0; i < total; i++) {
        printf("%d ", elements[i]);
    }
    printf("\n");

    return 0;
}