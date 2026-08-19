#include <stdio.h>

int main() {
    int num, cnt = 0;

    printf("\nEnter any number :: ");
    scanf("%d", &num);

    for (int tNum = num; tNum > 0; tNum /= 10) {
        cnt++;
    }

    printf("\nNumber of digits in [ %d ] is :: [ %d ].\n", num, cnt);

    return 0;
}