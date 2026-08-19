#include <stdio.h>

int main() {
    int num;
    int isEven;

    printf("Enter an integer number :: ");
    scanf("%d", &num);

    isEven = (num & 1) == 0;

    if (isEven) {
        printf("\n%d is an EVEN number.", num);
    } else {
        printf("\n%d is an ODD number.", num);
    }

    return 0;
}