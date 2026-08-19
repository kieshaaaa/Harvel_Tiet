#include <stdio.h>

int main() {
    int grade, passCount = 0, totalCount = 0;
    float passPercentage;
    
    printf("Enter a test score (-1 to quit): ");
    scanf("%d", &grade);
    
    while (grade != -1) {
        if (grade >= 70 && grade <= 100) {
            passCount++;
        }
        
        if (grade >= 0 && grade <= 100) {
            totalCount++;
        }
        
        printf("Enter a test score (-1 to quit): ");
        scanf("%d", &grade);
    }
    
    passPercentage = totalCount > 0 ? (float)passCount / totalCount * 100 : 0;
    
    printf("\nPercentage of passing scores: %f\n", passPercentage);
    return 0;
}