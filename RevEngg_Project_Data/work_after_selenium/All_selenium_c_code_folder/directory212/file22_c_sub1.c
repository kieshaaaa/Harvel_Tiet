#include <stdio.h>

int main() {
    int start, end;
    int i, j, sum;
    int count = 0;

    printf("Enter the starting number: ");
    scanf("%d", &start);
    printf("Enter the ending number: ");
    scanf("%d", &end);

    i = start;
    while (i <= end) {
        sum = 0;
        j = 1;
        while (j <= i / 2) {
            if (i % j == 0) {
                sum += j;
            }
            j++;
        }
        if (sum == i && i != 0) {
            count++;
        }
        i++;
    }

    printf("Count of perfect numbers between is : %d \n", count);

    return 0;
}