#include <stdio.h>

int main() {
    int c;
    int andResult;

    printf("Enter an integer (c): ");
    scanf("%d", &c);

    andResult = c & 15; // Performing a bitwise AND with 15

    printf("AND Operation Result: %d \n", andResult);

    return 0;
}