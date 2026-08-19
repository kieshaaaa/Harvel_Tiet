#include <stdio.h>

int main() {
    int num;
    int square, cube;
    printf("Enter a positive integer (n) to find the nth cubic number: ");
    scanf("%d", &num);

    if (num <= 0) {
        printf("Please enter a positive integer.\n");
        return 1;
    }

    square = num * num; 
    cube = square * num;

    printf("The %dth cubic number is: %d\n", num, cube);
    return 0;
}