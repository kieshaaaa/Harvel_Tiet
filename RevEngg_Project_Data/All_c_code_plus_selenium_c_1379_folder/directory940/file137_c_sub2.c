#include <stdio.h>

int main() {
    int input, shiftResult;
    printf("Enter a number: ");
    scanf("%d", &input);
    shiftResult = (input << 1) + 5;
    printf("Result after shift and addition: %d\n", shiftResult);
    return 0;
}