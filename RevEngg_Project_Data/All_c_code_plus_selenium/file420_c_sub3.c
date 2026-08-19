#include <stdio.h>

int main() {
    int num;
    printf("Enter a number to check whether it is Even or Odd => ");
    scanf("%d", &num);

    int isEven = num % 2 == 0 ? 1 : 0;
    if (isEven) {
        printf("%d is Even\n", num);
        printf("Next even number is %d\n", num + 2);
    } else {
        printf("%d is Odd\n", num);
        printf("Next odd number is %d\n", num + 2);
    }
    return 0;
}