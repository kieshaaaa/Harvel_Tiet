#include <stdio.h>

int main() {
    int n, revNumber = 0, dig;
    printf("Enter an integer number : ");
    scanf("%d", &n);
    for (; n > 0; n /= 10) {
        dig = n % 10;
        revNumber = revNumber * 10 + dig;
    }
    printf("Reverse Number is : ");
    printf("%d\n", revNumber);
    return 0;
}