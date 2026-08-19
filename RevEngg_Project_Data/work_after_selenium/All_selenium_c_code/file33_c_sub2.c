#include <stdio.h>

int main() {
    int num;
    int nextEvenOrOdd;

    printf("\nEnter a number to check whether it is Even or Odd => ");
    scanf("%d", &num);

    if ((num & 1) == 0) {
        nextEvenOrOdd = num + 2;
        printf("\n%d is Even", nextEvenOrOdd);
    } else {
        nextEvenOrOdd = num + 1;
        printf("\n%d is Odd", nextEvenOrOdd);
    }

    return 0;
}