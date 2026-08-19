#include <stdio.h>

int main() {
    int grade, passCount = 0, totalCount = 0;
    float passPercentage;
    
    while (1) {
        printf("Enter a test score (0-100, -1 to quit): ");
        scanf("%d", &grade);
        if (grade == -1) break;
        
        if (grade < 0 || grade > 100) {
            printf("Invalid score, please enter a value between 0 and 100 or -1 to quit.\n");
            continue;
        }
        
        if (grade >= 70) passCount++;
        totalCount++;
    }
    
    passPercentage = totalCount > 0 ? (float)passCount / totalCount * 100 : 0;
    
    printf("\nPercentage of passing scores: %f\n", passPercentage);
    return 0;
}