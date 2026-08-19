#include <stdio.h>

int main() {
    int y, difference;
    printf("Enter an integer (y): ");
    scanf("%d", &y);
    difference = y - 3;
    printf("The difference is ");
    printf("%d", difference);
    printf(" \n");
    return 0;
}