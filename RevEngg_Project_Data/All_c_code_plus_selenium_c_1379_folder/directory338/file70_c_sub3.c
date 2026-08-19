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

    printf("\nElements of first array are : ");
    for(i = 0; i < size; i++) {
        second[i] = first[i]; // Copying element
        printf(" %d ", first[i]); // Display first array element
        if(i == size - 1) { // Switching to second array output
            printf("\n\nElements of second array are : ");
        }
    }

    for(i = 0; i < size; i++) {
        printf(" %d ", second[i]); // Display second array element
    }

    return 0;
}