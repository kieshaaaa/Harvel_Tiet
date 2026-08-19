#include <stdio.h>

int main() {
    int num, sum = 0;
    printf("\nEnter any number :: ");
    scanf("%d", &num);

    for(int i = 1; i <= num / 2; i++) {
        if(num % i == 0) {
            sum += i;
        }
    }

    if(sum == num) {
        printf("\nThe Entered Number [ %d ] is a Perfect Number.\n", num);
    } else {
        printf("\nThe Entered Number [ %d ] is not a Perfect Number.\n", num);
    }

    return 0;
}