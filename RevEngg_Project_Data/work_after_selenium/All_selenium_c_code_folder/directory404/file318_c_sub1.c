#include <stdio.h>

int main() {
    int num, result;
    printf("\nEnter a number to check whether it is Even or Odd => ");
    scanf("%d", &num);

    result = num & 1;
    if (result == 0) {
        printf("\n%d is Even", num);
    } else {
        printf("\n%d is Odd", num);
    }

    return 0;
}