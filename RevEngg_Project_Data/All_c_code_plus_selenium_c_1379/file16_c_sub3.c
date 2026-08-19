#include <stdio.h>

int main() {
    int number;
    printf("Enter a number: ");
    scanf("%d", &number);

    int isDivisible = number % 5;
    int result = isDivisible ? number + 2 : number + 1;
    
    char *message = isDivisible ? "is not divisible by 5." : "is divisible by 5.";
    printf("%d %s\n", result, message);

    return 0;
}