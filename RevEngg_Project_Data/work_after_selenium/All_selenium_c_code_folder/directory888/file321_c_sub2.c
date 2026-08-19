#include<stdio.h>

int main() {
    int array[10], numElements, target, isFound = 0, position;

    printf("Enter number of elements: ");
    scanf("%d", &numElements);

    for (int i = 0; i < numElements; i++) {
        printf("Element [%d]: ", i);
        scanf("%d", &array[i]);
    }

    printf("Number to find: ");
    scanf("%d", &target);

    for (int i = 0; i < numElements; i++) {
        if (array[i] == target) {
            isFound = 1;
            position = i;
            break;
        }
    }

    if (isFound) {
        printf("Number found at position %d.\n", position);
    } else {
        printf("Number not found.\n");
    }

    return 0;
}