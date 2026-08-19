#include <stdio.h>

int main() {
    int num, temp;
    printf("\nEnter a number to check whether it is Even or Odd => ");
    scanf("%d", &num);

    temp = (num / 2) * 2;
    if (temp == num) {
        printf("\n%d is Even", num);
    } else {
        printf("\n%d is Odd", num);
    }

    return 0;
}