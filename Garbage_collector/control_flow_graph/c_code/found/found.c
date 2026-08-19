#include <stdio.h>
int main() {
    int size, target;
    
    printf("Enter the size of the array: ");
    scanf("%d", &size);
    
    int array[size];
    
    printf("Enter %d elements of the array:\n", size);
    for (int i = 0; i < size; i++) {
        scanf("%d", &array[i]);
    }
    
    printf("Enter the element to search: ");
    scanf("%d", &target);
    
    // Using if-else condition to check if the target element is present in the array
    int found = 0;
    for (int i = 0; i < size; i++) {
        if (array[i] == target) {
            found = 1;
            break;
        }
    }
    
    if (found) {
        printf("Element %d is present in the array.\n", target);
    } else {
        printf("Element %d is not present in the array.\n", target);
    }
    
    return 0;
}
