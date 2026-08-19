#include<stdio.h>

void printPattern1(int n) {
    for (int row = 1; row <= n; row++) {
        for (int num = 1; num <= row; num++) {
            printf("%d ", num);
        }
        printf("\n");
    }
}

void printPattern2(int n) {
    for (int row = n; row >= 1; row--) {
        for (int num = 1; num <= row; num++) {
            printf("%d ", num);
        }
        printf("\n");
    }
}

void printPattern3(int n) {
    for (int row = n; row >= 1; row--) {
        for (int num = row; num >= 1; num--) {
            printf("%d ", num);
        }
        printf("\n");
    }
}

int main() {
    int n;
    printf("Enter how many lines you want to print? ");
    scanf("%d", &n);

    printf("\n------------ Pattern 1 ----------- \n\n");
    printPattern1(n);

    printf("\n------------ Pattern 2 ----------- \n\n");
    printPattern2(n);

    printf("\n------------ Pattern 3 ----------- \n\n");
    printPattern3(n);

    return 0;
}