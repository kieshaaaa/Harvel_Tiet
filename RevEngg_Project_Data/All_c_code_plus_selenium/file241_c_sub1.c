#include <stdio.h>

int main() {
    int n, search;
    int array[100]; // Assuming the size is sufficient for the task
    
    // Simplified input process
    printf("Number of elements: ");
    scanf("%d", &n);
    
    printf("Enter elements: ");
    for (int i = 0; i < n; i++) {
        scanf("%d", &array[i]);
    }
    
    printf("Search value: ");
    scanf("%d", &search);
    
    int first = 0, last = n - 1;
    int found = 0; // To mark if the element is found
    
    while (first <= last) {
        int middle = (first + last) / 2;
        
        if (array[middle] == search) {
            printf("%d found at position %d.\n", search, middle + 1);
            found = 1;
            break;
        } else if (array[middle] < search) {
            first = middle + 1;
        } else {
            last = middle - 1;
        }
    }
    
    if (!found) {
        printf("Not found! %d is not present in the list.\n", search);
    }
    
    return 0;
}