#include<stdio.h>

int main() {
    float feet, inches;
    char continueConversion;
    
    do {
        printf("Enter the value of feet: ");
        scanf("%f", &feet);
        
        inches = feet * 12.0f;
        
        printf("\nTotal inches will be: %.2f\n", inches);
        
        printf("\nDo you want to convert another value? (Y/N): ");
        scanf(" %c", &continueConversion); // Note the space before %c to catch any newline left in the input buffer
        
    } while(continueConversion == 'Y' || continueConversion == 'y');
    
    return 0;
}