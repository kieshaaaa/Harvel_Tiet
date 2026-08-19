#include <stdio.h>

int main() {
    int num;
    int result;

    printf("Enter an integer number :: ");
    scanf("%d", &num);

    result = (num % 2 == 0) ? 1 : 0;

    if (result == 1) {
        printf("\n%d is an EVEN number.", num);
    } else {
        printf("\n%d is an ODD number.", num);
    }

    return 0;
}