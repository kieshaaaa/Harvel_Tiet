#include <stdio.h>

int main() {
    int n, dig;
    printf("Enter an integer number : ");
    scanf("%d", &n);
    int revNumber = 0; // Initialization moved here for clarity
    while (n > 0) {
        dig = n % 10;
        revNumber *= 10;
        revNumber += dig;
        n /= 10;
    }
    printf("Reverse Number is : ");
    printf("%d\n", revNumber);
    return 0;
}