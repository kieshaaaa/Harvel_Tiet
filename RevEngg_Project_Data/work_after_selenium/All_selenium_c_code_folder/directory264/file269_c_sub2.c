#include <stdio.h>

int main() {
    int num;
    printf("\nEnter a number => ");
    scanf("%d", &num);

    printf("\n");
    num > 0 ? printf("1 is Positive") : (num < 0 ? printf("-1 is Negative") : printf("Entered Number is 0"));
    printf("\n");

    return 0;
}