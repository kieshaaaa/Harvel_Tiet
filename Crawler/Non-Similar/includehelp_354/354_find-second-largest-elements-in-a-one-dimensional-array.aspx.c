/* Source: https://www.includehelp.com/c-programs/find-second-largest-elements-in-a-one-dimensional-array.aspx */
//
//  main.c
//  Second largest element in the array
//
//  Created by Anshuman Singh on 22/06/19.
//

#include <stdio.h>
#include <stdlib.h>

int second_largest_element(int arr[], int length) {
    int first_large_ele = 0, second_large_ele = 0, index;
    
    if (length < 2) {
        printf("Error: Array has less than two element !!!");
    }
    
    for (index = 0; index < length; index++) {
        if (first_large_ele < arr[index]) {
            second_large_ele = first_large_ele;
            first_large_ele = arr[index];
        }
        else if (arr[index] != first_large_ele && \
                 second_large_ele < arr[index] && \
                 second_large_ele < first_large_ele) {
            second_large_ele = arr[index];
        }
    }
    return second_large_ele;
}

int main() {
    int size, index;
    
    printf("Enter the size of array: ");
    scanf("%d", &size);
    
    int arr[size];
    int array_length = (int)sizeof(arr) / sizeof(int);
    
    printf("\nEnter the array elements: ");
    for (index = 0; index < array_length; index++) {
        scanf("%d", &arr[index]);
    }
    
    printf("Second largest element: %d ", second_largest_element(arr, array_length));
    return 0;
}
