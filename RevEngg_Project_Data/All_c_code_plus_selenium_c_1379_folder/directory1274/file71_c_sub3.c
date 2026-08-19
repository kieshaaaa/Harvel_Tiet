#include <stdio.h>
#include <stdlib.h>

int main() {
    int start, end;
    printf("Enter the starting number: ");
    scanf("%d", &start);
    printf("Enter the ending number: ");
    scanf("%d", &end);

    printf("Even numbers between %d to %d\n", start, end);

    int counter = start;
    do {
        if (counter % 2 == 0) {
            printf("%d ", counter);
        }
        counter++;
    } while (counter <= end);

    return 0;
}