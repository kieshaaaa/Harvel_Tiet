#include <stdio.h>

int main() {
    int number, counter = 1, total = 0;
    printf("\nEnter any number :: ");
    scanf("%d", &number);

    for(; counter < number; counter++) {
        if(number % counter == 0) {
            total += counter;
        }
    }

    if(total == number) {
        printf("\nThe Entered Number [ %d ] is a Perfect Number.\n", number);
    } else {
        printf("\nThe Entered Number [ %d ] is not a Perfect Number.\n", number);
    }

    return 0;
}