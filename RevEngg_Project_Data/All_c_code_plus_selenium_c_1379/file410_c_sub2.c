#include <stdio.h>

int main() {
    int arr[1];
    arr[0] = 100; // Assign 100 to the first element
    
    printf("Value of arr[0]: %d", arr[0]);
    
    arr[0] = 200; // Change the value of the first element
    printf("\nAfter Changing, Value of arr[0]: %d", arr[0]);
    
    return 0;
}