#include <stdio.h>

int main() {
    int num;
    int isOdd;

    printf("Enter an integer number :: ");
    scanf("%d", &num);

    isOdd = ((num + 1) - num) != 1;

    if (!isOdd) {
        printf("\n%d is an EVEN number.", num);
    } else {
        printf("\n%d is an ODD number.", num);
    }

    return 0;
}