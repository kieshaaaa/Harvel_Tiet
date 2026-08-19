#include <stdio.h>
#define MAXSIZE 10

void main() {
    int array[MAXSIZE];
    int i, j, num, temp;
    
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
    for (i = 1; i < num; i++) {
        for (j = 0; j < num - i; j++) {
            if (array[j] > array[j + 1]) {
                temp = array[j];
                array[j] = array[j + 1];
                array[j + 1] = temp;
            }
        }
    }
    printf("Optimized sorted array is...\n");
    for (i = 0; i < num; i++) {
        printf("%d\n", array[i]);
    }
}