#include <stdio.h>

int array[100], array1[100];

void main() {
    int n, i, j, k, temp;

    printf("Enter size of array :");
    scanf("%d", &n);
    printf("Enter elements into array :");
    for (i = 0; i < n; i++) {
        scanf("%d", &array[i]);
        array1[i] = array[i];
    }

    for (k = 0; k < 3; k++) {
        for (i = 0; i < n; i++) {
            for (j = i + 1; j < n; j++) {
                if ((array[i] % 10) > (array[j] % 10)) {
                    // Swap in array
                    temp = array[i];
                    array[i] = array[j];
                    array[j] = temp;
                    // Swap in array1
                    temp = array1[i];
                    array1[i] = array1[j];
                    array1[j] = temp;
                }
            }
        }
        for (i = 0; i < n; i++) {
            array[i] = array[i] / 10;
        }
    }

    printf("Sorted Array (LSD radix sort) : ");
    for (i = 0; i < n; i++) {
        printf("%d ", array1[i]);
    }
}