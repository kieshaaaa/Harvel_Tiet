#include <stdio.h>

int main() {
    int lines, i, j;
    printf("Enter the no. of lines: ");
    scanf("%d", &lines);

    for (i = 0; i < lines; i++) {
        // Print spaces
        for (j = 0; j < lines - i - 1; j++) printf(" ");
        
        long value = 1;
        for (j = 0; j <= i; j++) {
            // Print the current value
            printf("%ld ", value);
            // Update the value for the next iteration
            value = value * (i - j) / (j + 1);
        }
        printf("\n");
    }
    return 0;
}