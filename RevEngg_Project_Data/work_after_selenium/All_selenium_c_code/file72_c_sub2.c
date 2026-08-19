#include <stdio.h>

int main() {
    int n, revNumber = 0, dig;
    printf("Enter an integer number : ");
    scanf("%d", &n);
    if (n <= 0) {
        printf("Reverse Number is : 0\n"); // Assuming reverse of 0 and negative numbers as a special case
    } else {
        do {
            dig = n % 10;
            revNumber = revNumber * 10 + dig;
            n /= 10;
        } while (n > 0);
        printf("Reverse Number is : ");
        printf("%d\n", revNumber);
    }
    return 0;
}