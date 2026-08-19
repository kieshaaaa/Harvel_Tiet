#include<stdio.h>

int main() {
    int number, limit, counter = 1;
    printf("Enter an integer: ");
    scanf("%d", &number);
    printf("Enter the range: ");
    scanf("%d", &limit);
    
    for(counter = 1; counter <= limit; counter++) {
        int product = number * counter;
        printf("%d * %d = %d\n", number, counter, product);
    }
    return 0;
}