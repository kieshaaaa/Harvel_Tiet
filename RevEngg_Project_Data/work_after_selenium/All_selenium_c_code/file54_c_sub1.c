#include <stdio.h>
#define MAXSIZE 10

void main() {
    int array[MAXSIZE];
    int i, j, num, temp, swapped;
    
    printf("Enter the value of num \n");
    scanf("%d", &num);
    printf("Enter the elements one by one \n");
    for (i = 0; i < num; i++) {
        scanf("%d", &array[i]);
    }
    printf("Input array is \n");
    for (i = 0; i < num; i++) {
        printf("%d\n", array[i]);
    }
    for (i = 0; i < num - 1; i++) {
        swapped = 0;
        j = 0;
        while (j < num - i - 1) {
            if (array[j] > array[j + 1]) {
                temp = array[j];
                array[j] = array[j + 1];
                array[j + 1] = temp;
                swapped = 1;
            }
            j++;
        }
        if (swapped == 0) break;
    }
    printf("Sorted array is...\n");
    for (i = 0; i < num; i++) {
        printf("%d\n", array[i]);
    }
}