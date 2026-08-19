#include <stdio.h>

int main() {
    int num, i = 1, sum = 0;
    printf("\nEnter any number :: ");
    scanf("%d", &num);

    while(i < num) {
        if(num % i == 0) {
            sum += i;
        }
        i++;
    }

    if(sum == num) {
        printf("\nThe Entered Number [ %d ] is a Perfect Number.\n", num);
    } else {
        printf("\nThe Entered Number [ %d ] is not a Perfect Number.\n", num);
    }

    return 0;
}