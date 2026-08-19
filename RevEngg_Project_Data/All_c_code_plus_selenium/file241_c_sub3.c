#include <stdio.h>

int main() {
    int array[100], n, search;
    
    printf("Enter total elements: ");
    scanf("%d", &n);
    
    printf("Input elements in ascending order: ");
    for (int i = 0; i < n; ++i) {
        scanf("%d", &array[i]);
    }
    
    printf("Element to find: ");
    scanf("%d", &search);
    
    int low = 0, high = n - 1, middle;
    
    while (low <= high) {
        middle = low + (high - low) / 2;
        
        if (array[middle] == search) {
            printf("Element %d found at index %d.\n", search, middle);
            return 0;
        } else if (array[middle] < search) {
            low = middle + 1;
        } else {
            high = middle - 1;
        }
    }
    
    printf("Element %d not found.\n", search);
    
    return 0;
}