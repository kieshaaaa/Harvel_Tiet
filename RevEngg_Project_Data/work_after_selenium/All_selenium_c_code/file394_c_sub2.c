#include <stdio.h>

int main() {
    int num;
    printf("Enter an integer number: ");
    scanf("%d", &num);

    int square = 1, i = 1;
    while (square <= num) {
        if (square == num) {
            printf("%d is a perfect square.\n", num);
            return 0;
        }
        i++;
        square = i * i;
    }

    printf("%d is not a perfect square.\n", num);
    return 0;
}