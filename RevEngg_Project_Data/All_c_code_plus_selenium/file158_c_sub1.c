#include <stdio.h>

int main() {
    int n, index;
    float temp;
    float array[10];

    printf("\nEnter the number of elements: ");
    scanf("%d", &n);
    
    printf("\nEnter %d elements: ", n);
    for (index = 0; index < n; index++) {
        scanf("%f", &array[index]);
    }

    index = 0;
    while (index < n) {
        if (index == 0 || array[index - 1] <= array[index]) {
            index++;
        } else {
            temp = array[index];
            array[index] = array[index - 1];
            array[index - 1] = temp;
            index--;
        }
    }

    printf("\nSorted elements: ");
    for (index = 0; index < n; index++) {
        printf("%.2f ", array[index]);
    }
    return 0;
}