#include <stdio.h>

int main() {
    int array[100], numElements, position;
    int index1, index2;
    printf("Enter the number of elements in the array: ");
    scanf("%d", &numElements);

    printf("Enter the position of the element you want to delete: ");
    scanf("%d", &position);

    // Deletion logic
    index1 = position - 1;
    while (index1 < numElements - 1) {
        array[index1] = array[index1 + 1];
        index1++;
    }
    numElements--;

    printf("Array after deletion:\n");
    index2 = 0;
    while (index2 < numElements) {
        printf("%d ", array[index2]);
        index2++;
    }

    return 0;
}