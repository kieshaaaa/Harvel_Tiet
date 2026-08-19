#include <stdio.h>

int main() {
    int num;
    int cubicNum;
    printf("Enter a positive integer (n) to find the nth cubic number: ");
    scanf("%d", &num);

    // Validate input
    if (num <= 0) {
        printf("Please enter a positive integer.\n");
        return 1; // Exit with an error code
    }

    cubicNum = num * num * num;

    printf("The %dth cubic number is: %d\n", num, cubicNum);

    return 0;
}