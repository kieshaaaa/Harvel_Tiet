#include <stdio.h>

int main() {
    int num, cnt = 0;

    printf("\nEnter any number :: ");
    scanf("%d", &num);

    if (num == 0) {
        cnt = 1; // Direct assignment for the case of 0
    } else {
        int tNum = num < 0 ? -num : num; // Make tNum positive if num is negative
        while (tNum > 0) {
            cnt++;
            tNum /= 10;
        }
    }

    printf("\nNumber of digits in [ %d ] is :: [ %d ].\n", num, cnt);

    return 0;
}