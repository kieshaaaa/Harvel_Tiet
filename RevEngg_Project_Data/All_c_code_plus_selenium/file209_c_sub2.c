#include <stdio.h>

int main() {
    int maxRows;
    printf("\nHow Many Rows => ");
    scanf("%d", &maxRows);

    if (maxRows < 1) {
        printf("\n!!! Invalid Input, Please Enter Positive Number....");
        return 0;
    }

    printf("\n--------------------------------------------\n");

    for (int i = 1; i <= maxRows; i++) {
        for (int j = 1; j <= maxRows * 2 - 1; j++) {
            int minDist = j < maxRows ? maxRows - j : j - maxRows;
            int num = i - minDist;
            if (num > 0)
                printf("%2d ", num);
            else
                printf("   ");
        }
        printf("\n");
    }

    return 0;
}