#include <stdio.h> 

int main() {
    int numbers[10], i;
    int minIndex = 0, maxIndex = 0;
    
    printf("\n Enter 10 numbers: ");
    for(i = 0; i < 10; i++) {
        scanf("%d", &numbers[i]);
    }
    
    for(i = 1; i < 10; i++) {
        if(numbers[i] < numbers[minIndex]) {
            minIndex = i;
        }
        if(numbers[i] > numbers[maxIndex]) {
            maxIndex = i;
        }
    }
    
    printf("\n The smallest number: %d", numbers[minIndex]); 
    printf("\n Index of the smallest number: %d", minIndex);
    
    printf("\n The largest number: %d", numbers[maxIndex]); 
    printf("\n Index of the largest number: %d\n", maxIndex);
    return 0;
}