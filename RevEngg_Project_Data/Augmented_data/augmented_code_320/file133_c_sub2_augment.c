#include<stdio.h>

int main() {
    int number, begin, finish, counter;
    printf("Enter an integer: ");
    scanf("%d", &number);
    printf("Enter start of range: ");
    scanf("%d", &begin);
    printf("Enter end of range: ");
    scanf("%d", &finish);
    
    if(begin <= finish) {
        counter = begin;
        while(counter <= finish) {
            int product = number * counter;
            printf("%d * %d = %d\n", number, counter, product);
            counter++;
        }
    } else {
        counter = begin;
        while(counter >= finish) {
            int product = number * counter;
            printf("%d * %d = %d\n", number, counter, product);
            counter--;
        }
    }
    return 0;
}