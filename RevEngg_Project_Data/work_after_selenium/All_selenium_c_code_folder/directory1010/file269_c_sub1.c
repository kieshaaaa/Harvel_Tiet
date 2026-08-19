#include <stdio.h>

int main() {
    int num;
    printf("\nEnter a number => ");
    scanf("%d", &num);

    if (num > 0) {
        printf("\n1 is Positive");
    } else if (num < 0) {
        printf("\n-1 is Negative");
    } else {
        printf("\nEntered Number is 0");
    }
    printf("\n");

    return 0;
}