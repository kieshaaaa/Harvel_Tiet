#include <stdio.h>
int main() {
    int num;
    printf("Enter an integer number: ");
    scanf("%d", &num);

    // Using bitwise AND to determine if the number is even or odd.
    // For even numbers, num & 1 will be 0. For odd numbers, it will be 1.
    if ((num & 1) == 0)
        printf("%d is an EVEN number.", num);
    else
        printf("%d is an ODD number.", num);

    return 0;
}