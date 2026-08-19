#include <stdio.h>

int main() {
    int num, cnt = 0;

    printf("Enter a number: ");
    scanf("%d", &num);

    if (num == 0) {
        cnt = 1; // Edge case for 0
    } else {
        do {
            cnt++;
            num /= 10;
        } while (num > 0);
    }

    printf("Total numbers of digits are: ");
    printf("%d", cnt);
    printf(" in number: ");
    printf("%d", num);
    printf(".");

    return 0;
}