#include <stdio.h>

int main() {
    int num;
    printf("Enter an integer number :: ");
    scanf("%d", &num);

    int isOdd = num % 2;
    if(isOdd)
        printf("\n%d is an ODD number.", num);
    else
        printf("\n%d is an EVEN number.", num);

    return 0;
}