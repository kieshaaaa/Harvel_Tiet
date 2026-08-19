#include <stdio.h>
#include <stdlib.h>

int main() {
    int start, end;
    printf("Enter the starting number: ");
    scanf("%d", &start);
    printf("Enter the ending number: ");
    scanf("%d", &end);

    if (start % 2 != 0) start++; // Ensure start is even

    printf("Even numbers between %d to %d\n", start, end);

    for (int counter = start; counter <= end; counter += 2) {
        printf("%d ", counter);
    }

    return 0;
}