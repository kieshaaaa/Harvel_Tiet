#include <stdio.h>

int main() {
    int num;
    
    printf("Enter a number: ");
    scanf("%d", &num);
    
    char *signStatus;
    char *parityStatus;
    
    signStatus = num > 0 ? "positive" : "negative";
    parityStatus = num % 2 == 0 ? "even" : "odd";
    
    printf("The number is %s.\n", signStatus);
    printf("It is also %s.\n", parityStatus);
    
    return 0;
}