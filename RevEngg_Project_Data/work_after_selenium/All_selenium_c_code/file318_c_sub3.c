#include <stdio.h>

int main() {
    int num;
    float half;
    printf("\nEnter a number to check whether it is Even or Odd => ");
    scanf("%d", &num);

    half = num / 2.0f;
    if ((half - (int)half) == 0) {
        printf("\n%d is Even", num);
    } else {
        printf("\n%d is Odd", num);
    }

    return 0;
}