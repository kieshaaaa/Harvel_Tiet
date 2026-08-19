#include <stdio.h>

int main() {
    int num, x, y;
    int isComposite;
    int counter = 0;

    printf("Enter a number: ");
    scanf("%d", &num);

    x = 4;
    while (x <= num) {
        isComposite = 0;
        y = 2;
        while (y < x) {
            if (x % y == 0) {
                isComposite = 1;
                break;
            }
            y++;
        }
        if (isComposite) {
            counter++;
        }
        x++;
    }

    printf("Number of composite numbers till %d: %d\n", num, counter);
    return 0;
}