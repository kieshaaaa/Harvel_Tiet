#include <stdio.h>

int main() {
    int start, end;
    int i, j, sum;
    int count = 0;

    printf("Enter the starting number: ");
    scanf("%d", &start);
    printf("Enter the ending number: ");
    scanf("%d", &end);

    for (i = start; i <= end; i++) {
        sum = 0;
        j = 1;
        do {
            if (i % j == 0) {
                sum += j;
            }
            j++;
        } while (j <= i / 2);

        if (sum == i && i != 0) {
            count++;
        }
    }

    printf("Count of perfect numbers between is : %d \n", count);

    return 0;
}