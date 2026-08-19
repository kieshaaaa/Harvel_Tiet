#include <stdio.h>

int main() {
    int num;
    printf("\nEnter An Integer => ");
    scanf("%d", &num);

    int lastDigit = num % 10;
    int result = num - lastDigit;
    
    printf("\nResult After Converting Last Digit into 0 => %d", result);

    return 0;
}