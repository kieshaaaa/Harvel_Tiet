#include <stdio.h>

int main() {
    int num;
    printf("\nEnter An Integer => ");
    scanf("%d", &num);

    int reduced = num % 10;
    int result = num - reduced;
    
    printf("\nResult After Converting Last Digit into 0 => %d", result);

    return 0;
}