#include <stdio.h>

int main() {
    int num, i;
    int found = 0;

    printf("\nEnter any number :: ");
    scanf("%d", &num);

    for (i = 0; i * i <= num; i++) {
        if (i * i == num) {
            found = 1;
            break;
        }
    }

    if (found == 1)
        printf("\nThe Entered Number [ %d ] is a Perfect Square.\n", num);
    else
        printf("\nThe Entered Number [ %d ] is not a Perfect Square.\n", num);

    return 0;
}