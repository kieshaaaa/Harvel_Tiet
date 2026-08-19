#include <stdio.h>

int main() {
    int numbers[100], numElements, position, value;
    int index, idx;
    printf("Enter the number of elements in the array: ");
    scanf("%d", &numElements);


    printf("Enter the position where you want to insert the new element: ");
    scanf("%d", &position);

    printf("Enter the value of the new element: ");
    scanf("%d", &value);

    // Insertion logic
    index = numElements;
    while (index >= position) {
        numbers[index] = numbers[index - 1];
        index--;
    }
    numbers[position - 1] = value;
    numElements++;

    printf("Array after insertion:\n");
    for (idx = 0; idx < numElements; idx++) {
        printf("%d ", numbers[idx]);
    }

    return 0;
}