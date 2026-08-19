#include <stdio.h>

int main() {
    int n;
    printf("Enter the number of rows: ");
    scanf("%d", &n);

    if (n < 1) {
        printf("Please enter a positive number.");
        return 0;
    }

    int i = 1;
    while (i <= n) {
        int space = 1;
        while (space < i) {
            printf("  ");
            space++;
        }

        int num = i;
        while (num <= n) {
            printf("%d ", num);
            num++;
        }

        printf("\n");
        i++;
    }

    return 0;
}