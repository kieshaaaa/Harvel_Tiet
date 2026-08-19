#include <stdio.h>

int main() {
    int n, search;
    int array[100];
    
    printf("Elements count: ");
    scanf("%d", &n);
    
    for (int i = 0; i < n; i++) {
        printf("Element %d: ", i + 1);
        scanf("%d", &array[i]);
    }
    
    printf("Search for: ");
    scanf("%d", &search);
    
    for (int first = 0, last = n - 1, middle; first <= last;) {
        middle = first + (last - first) / 2;
        
        if (array[middle] == search) {
            printf("%d is at position %d.\n", search, middle + 1);
            return 0;
        }
        
        if (array[middle] < search) first = middle + 1;
        else last = middle - 1;
    }
    
    printf("%d not found in the list.\n", search);
    
    return 0;
}