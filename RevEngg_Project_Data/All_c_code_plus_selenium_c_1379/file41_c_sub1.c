#include <stdio.h>

int main() {
    int arr1[5], arr2[5], arr3[10];
    int i;

    // Reading arr1
    for (i = 0; i < 5; i++) {
        printf("\nEnter arr1[%d] : ", i);
        scanf("%d", &arr1[i]);
    }

    // Reading arr2
    for (i = 0; i < 5; i++) {
        printf("\nEnter arr2[%d] : ", i);
        scanf("%d", &arr2[i]);
    }

    // Merging arr1 and arr2 into arr3
    for (i = 0; i < 5; i++) {
        arr3[i] = arr1[i];
    }
    for (i = 0; i < 5; i++) {
        arr3[i + 5] = arr2[i];
    }

    // Printing arr3
    printf("\nMerged Array:\n");
    for (i = 0; i < 10; i++) {
        printf("arr3[%d] : %d\n", i, arr3[i]);
    }

    return 0;
}