#include <stdio.h>

int main() {
    int num;
    int tmp;
    int res;

    printf("Enter a number: ");
    scanf("%d", &num);

    tmp = num;

    for (; tmp >= 7; tmp -= 7);

    if (tmp == 0) {
        res = num + 1;
        printf("%d is divisible by 7.\n", res);
    } else {
        res = num + 2;
        printf("%d is not divisible by 7.\n", res);
    }

    return 0;
}