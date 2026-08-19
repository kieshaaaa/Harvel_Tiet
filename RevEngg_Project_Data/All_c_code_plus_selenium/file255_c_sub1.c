#include <stdio.h>

int main() {
    int num, cnt = 0;

    printf("Enter a number: ");
    scanf("%d", &num);

    for (; num > 0; num /= 10) {
        cnt++;
    }

    printf("Total numbers of digits are: ");
    printf("%d", cnt);
    printf(" in number: ");
    printf("%d", num);
    printf(".");

    return 0;
}