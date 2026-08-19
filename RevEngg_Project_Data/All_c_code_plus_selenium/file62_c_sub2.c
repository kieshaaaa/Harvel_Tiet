#include<stdio.h>

void printPattern(int n, int patternType) {
    for (int row = 1; row <= n; row++) {
        int start = (patternType == 1 || patternType == 2) ? 1 : row;
        int end = (patternType == 1) ? row : (patternType == 2) ? n - row + 1 : 1;
        int increment = (patternType == 3) ? -1 : 1;

        for (int num = start; patternType != 3 ? num <= end : num >= end; num += increment) {
            printf("%d ", num);
        }
        printf("\n");
        if (patternType == 2 || patternType == 3) n--;
    }
}

int main() {
    int n;
    printf("Enter how many lines you want to print? ");
    scanf("%d", &n);

    printf("\n------------ Pattern 1 ----------- \n\n");
    printPattern(n, 1);

    printf("\n------------ Pattern 2 ----------- \n\n");
    printPattern(n, 2);

    printf("\n------------ Pattern 3 ----------- \n\n");
    printPattern(n, 3);

    return 0;
}