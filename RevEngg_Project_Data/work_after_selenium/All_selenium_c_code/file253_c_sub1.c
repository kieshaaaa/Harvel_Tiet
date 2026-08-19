#include <stdio.h>

int main() {
    int num;
    
    printf("Enter a number: ");
    scanf("%d", &num);
    
    char *sign = num > 0 ? "Positive" : "Negative";
    char *parity = num % 2 == 0 ? "Even" : "Odd";
    
    printf("The number is %s and %s.\n", sign, parity);
    
    return 0;
}