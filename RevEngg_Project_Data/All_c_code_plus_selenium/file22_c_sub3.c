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
        for (j = 1; j <= i / 2; j++) {
            if (i % j == 0) sum += j; // More concise addition operation
        }
        if (sum == i && i != 0) count++; // Simplified increment for count
        i++; // Increment i for the next iteration
    }

    printf("Count of perfect numbers between is : %d \n", count);

    return 0;
}