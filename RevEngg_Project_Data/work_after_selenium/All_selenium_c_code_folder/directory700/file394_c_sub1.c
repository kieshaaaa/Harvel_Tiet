#include <stdio.h>

int main() {
    int num, root = 0;
    printf("Enter an integer number: ");
    scanf("%d", &num);

    for (int i = 1; i <= num / 2; i++) {
        if (i * i == num) {
            root = i;
            break;
        }
    }

    if (root > 0)
        printf("%d is a perfect square.\n", num);
    else
        printf("%d is not a perfect square.\n", num);

    return 0;
}