#include <stdio.h>

int main() {
    int a, result;
    printf("Enter an integer (a): ");
    scanf("%d", &a);
    result = a + 10; // Adds 10 to the user input
    printf("The result is ");
    printf("%d\n", result);
    return 0;
}