#include <stdio.h>

int main() {
    int number;
    int divisorTen = 10;
    int outcome;

    printf("\nEnter An Integer => ");
    scanf("%d", &number);
    outcome = number / divisorTen;
    printf("Without last Digit => ");
    printf("%d \n", outcome);

    return 0;
}