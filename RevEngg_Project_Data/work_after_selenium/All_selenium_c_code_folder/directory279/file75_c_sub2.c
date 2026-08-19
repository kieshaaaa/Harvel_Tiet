#include <stdio.h>

int main() {
    int num, cnt = 0;

    printf("\nEnter any number :: ");
    scanf("%d", &num);

    if (num == 0) cnt = 1; // If the number is zero
    else {
        int tNum = num;
        do {
            cnt++;
            tNum /= 10;
        } while (tNum > 0);
    }

    printf("\nNumber of digits in [ %d ] is :: [ %d ].\n", num, cnt);

    return 0;
}