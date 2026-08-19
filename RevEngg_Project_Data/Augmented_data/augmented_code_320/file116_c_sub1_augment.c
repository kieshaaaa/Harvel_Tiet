#include <stdio.h>

int main() {
    int number, outcome;
    printf("\nEnter An Integer => ");
    scanf("%d", &number);
    outcome = number / 10;
    printf("Without last Digit => ");
    printf("%d \n", outcome);
    return 0;
}