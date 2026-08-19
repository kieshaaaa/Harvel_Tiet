#include <stdio.h>

int main() {
    int num;
    printf("Enter an integer number: ");
    scanf("%d", &num);

    int odd = 1;
    int square = 0;
    while (num >= odd) {
        num -= odd;
        odd += 2; // Next odd number
        square++;
    }

    if (num == 0)
        printf("%d is a perfect square.\n", square * square);
    else
        printf("%d is not a perfect square.\n", square * square + num);

    return 0;
}