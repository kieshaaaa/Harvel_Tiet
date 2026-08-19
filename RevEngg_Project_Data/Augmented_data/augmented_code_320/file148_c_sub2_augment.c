#include <stdio.h>

int main() {
    int num, counter = 0;
    int cubicNum = 1; 
    printf("Enter a positive integer (n) to find the nth cubic number: ");
    scanf("%d", &num);

    if (num <= 0) {
        printf("Please enter a positive integer.\n");
        return 1;
    }

    for (counter = 0; counter < 3; counter++) {
        cubicNum *= num;
    }

    printf("The %dth cubic number is: %d\n", num, cubicNum);
    return 0;
}