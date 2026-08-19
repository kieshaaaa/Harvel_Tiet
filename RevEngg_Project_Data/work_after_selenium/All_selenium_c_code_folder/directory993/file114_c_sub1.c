#include <stdio.h>

int main() {
    int array[50], n, i, j, swapFlag;
    printf("Enter number of elements: ");
    scanf("%d", &n);

    for(i = 0; i < n; i++) {
        printf("Enter integer number %d: ", i+1);
        scanf("%d", &array[i]);
    }

    for (i = 0; i < n-1; i++) {
        swapFlag = 0; // flag to check if any swapping happened in this pass
        for (j = 0; j < n-1-i; j++) {
            if (array[j] > array[j+1]) {
                int temp = array[j];
                array[j] = array[j+1];
                array[j+1] = temp;
                swapFlag = 1;
            }
        }
        // If no two elements were swapped by inner loop, then break
        if (swapFlag == 0) {
            break;
        }
    }

    printf("Sorted list in ascending order: ");
    for(i = 0; i < n; i++) {
        printf("%d ", array[i]);
    }
    return 0;
}