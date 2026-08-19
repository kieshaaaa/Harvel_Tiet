#include <stdio.h>

int main() {
    int num, result;
    printf("\nEnter An Integer => ");
    scanf("%d", &num);
    result = num / 10;
    printf("Without last Digit => ");
    printf("%d \n", result);
    return 0;
}