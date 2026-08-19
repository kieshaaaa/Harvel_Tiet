#include <stdio.h>

int main() {
    int num;
    printf("Enter an integer number :: ");
    scanf("%d", &num);

    int modifiedNum = ((num - 1) * 2) + 1;
    if(modifiedNum != num)
        printf("\n%d is an EVEN number.", num);
    else
        printf("\n%d is an ODD number.", num);

    return 0;
}