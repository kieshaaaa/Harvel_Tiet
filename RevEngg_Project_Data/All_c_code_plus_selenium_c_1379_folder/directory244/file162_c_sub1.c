#include <stdio.h>

int main() {
    int num;
    printf("Enter an integer number :: ");
    scanf("%d", &num);

    int result = num & 1;
    if(result == 0)
        printf("\n%d is an EVEN number.", num);
    else
        printf("\n%d is an ODD number.", num);

    return 0;
}