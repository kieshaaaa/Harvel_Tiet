#include <stdio.h>

int main() {
    int num, cnt = 0;

    printf("Enter a number: ");
    scanf("%d", &num);

    if (num < 0) {
        num = -num; // Make the number positive
    }

    do {
        cnt++;
        num /= 10;
    } while (num > 0);

    printf("Total numbers of digits are: ");
    printf("%d", cnt);
    printf(" in number: ");
    printf("%d", num);
    printf(".");

    return 0;
}