#include <stdio.h>

int main() {
    int arr[10], i, minVal, maxVal, minPos, maxPos;

    printf("\n Enter 10 numbers: ");
    for(i = 0; i < 10; i++) {
        scanf("%d", &arr[i]);
        
        if(i == 0) { // Initialize min and max with the first element
            minVal = maxVal = arr[i];
            minPos = maxPos = 0;
        } else {
            if(arr[i] < minVal) {
                minVal = arr[i];
                minPos = i;
            }
            if(arr[i] > maxVal) {
                maxVal = arr[i];
                maxPos = i;
            }
        }
    }
    
    printf("\n The smallest number: %d", minVal); 
    printf("\n Index of the smallest number: %d", minPos);
    
    printf("\n The largest number: %d", maxVal); 
    printf("\n Index of the largest number: %d\n", maxPos);
    return 0;
}