#include<stdio.h>

int main() {
    float feet, inches;
    
    printf("Enter the value of feet: ");
    scanf("%f", &feet);
    
    inches = feet * 12.0f;
    
    printf("\nTotal inches will be: %.2f\n", inches);
    return 0;
}