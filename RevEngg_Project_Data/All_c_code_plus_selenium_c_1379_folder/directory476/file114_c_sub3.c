#include <stdio.h>

int main() {
    int array[50], n, i, j;
    printf("Enter number of elements: ");
    scanf("%d", &n);

    for(i = 0; i < n; i++) {
        printf("Enter integer number %d: ", i+1);
        scanf("%d", &array[i]);
    }

    for (i = 0; i < n-1; i++) {
        for (j = 0; j < n-i-1; j++) {
            if (array[j] > array[j+1]) {
                int temp = array[j+1];
                array[j+1] = array[j];
                array[j] = temp;
            }
        }
    }

    printf("Sorted list in ascending order: ");
    for(i = 0; i < n; i++) {
        printf("%d ", array[i]);
    }
    return 0;
}