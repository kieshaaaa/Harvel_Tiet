#include<stdio.h>

int main() {
    float feet, inches;
    int numberOfConversions, i;
    
    printf("How many conversions do you want to perform? ");
    scanf("%d", &numberOfConversions);
    
    for(i = 0; i < numberOfConversions; i++) {
        printf("\nEnter the value of feet for conversion %d: ", i+1);
        scanf("%f", &feet);
        
        inches = feet * 12.0f;
        
        printf("Total inches will be: %.2f\n", inches);
    }
    
    return 0;
}