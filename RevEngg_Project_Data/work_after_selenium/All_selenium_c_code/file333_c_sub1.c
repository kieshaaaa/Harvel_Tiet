#include <stdio.h>

int main() {
    int grade, passCount = 0, totalCount = 0;
    float passPercentage;
    
    while (1) {
        printf("Enter a test score (-1 to quit): ");
        scanf("%d", &grade);
        if (grade == -1) break;
        
        if (grade >= 70 && grade <= 100) passCount++;
        if (grade >= 0 && grade <= 100) totalCount++;
    }
    
    if (totalCount > 0) {
        passPercentage = (float)passCount / totalCount * 100;
    } else {
        passPercentage = 0;
    }
    
    printf("\nPercentage of passing scores: %f\n", passPercentage);
    return 0;
}