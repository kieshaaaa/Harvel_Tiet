#include <stdio.h>

int main() {
    int num;
    int result;

    printf("\nEnter a number to check whether it is Even or Odd => ");
    scanf("%d", &num);

    if (num % 2 == 0) {
        result = num + 2;
        printf("\n%d is Even", result);
    } else {
        result = num + 1;
        printf("\n%d is Odd", result);
    }

    return 0;
}