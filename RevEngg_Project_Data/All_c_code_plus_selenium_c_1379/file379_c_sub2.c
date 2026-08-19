#include <stdio.h> 

int main() {
    int nums[10];
    int minIndex, maxIndex, i;
    printf("\n Enter 10 numbers: ");
    for(i = 0; i < 10; i++) {
        scanf("%d", &nums[i]);
    }
    
    minIndex = maxIndex = 0; // Initialize indices to the first element
    
    // Find index of minimum value
    for(i = 1; i < 10; i++) {
        if(nums[i] < nums[minIndex]) minIndex = i;
    }
    
    // Find index of maximum value
    for(i = 1; i < 10; i++) {
        if(nums[i] > nums[maxIndex]) maxIndex = i;
    }
    
    printf("\n The smallest number: %d", nums[minIndex]); 
    printf("\n Index of the smallest number: %d", minIndex);
    
    printf("\n The largest number: %d", nums[maxIndex]); 
    printf("\n Index of the largest number: %d\n", maxIndex);
    return 0;
}