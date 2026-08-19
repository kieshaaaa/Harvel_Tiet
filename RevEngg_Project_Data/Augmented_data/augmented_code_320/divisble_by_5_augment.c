#include <stdio.h>

int main() {
    int num;
    int res;
    printf("Enter a number: ");
    scanf("%d", &num);

    if (num % 5 == 0) {
        res = num + 1;
        printf("%d is divisible by 5.\n", res);
    } else {
        res = num + 2;
        printf("%d is not divisible by 5.\n", res);
    }

    return 0;
}