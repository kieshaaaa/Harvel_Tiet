#include <stdio.h>

int main() {
    int first[100], second[100];
    int i, size;

    printf("Enter the size of the array : ");
    scanf("%d", &size);

    for(i = 0; i < size; i++) {
        printf("Enter element %d of the array : ", i + 1);
        scanf("%d", &first[i]);
    }

    i = 0;
    while(i < size) {
        second[i] = first[i];
        i++;
    }

    printf("\nElements of first array are : ");
    for(i = 0; i < size; i++) {
        printf(" %d ", first[i]);
    }

    printf("\n\nElements of second array are : ");
    for(i = 0; i < size; i++) {
        printf(" %d ", second[i]);
    }

    return 0;
}