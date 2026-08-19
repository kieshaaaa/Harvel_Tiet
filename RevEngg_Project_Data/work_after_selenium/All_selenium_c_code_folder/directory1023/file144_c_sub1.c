#include <stdio.h>
int main() {
    int num;
    printf("Enter an integer number: ");
    scanf("%d", &num);

    // Use the ternary operator for a compact if-else statement.
    int isEven = num % 2 == 0 ? 1 : 0;
    if (isEven)
        printf("%d is an EVEN number.", num);
    else
        printf("%d is an ODD number.", num);

    return 0;
}