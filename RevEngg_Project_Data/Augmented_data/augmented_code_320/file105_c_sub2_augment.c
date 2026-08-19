#include <stdio.h>

int main() {
    int num, x, y;
    int count = 0; 

    printf("Enter a number: ");
    scanf("%d", &num);

    count = num - 2; 

    x = 2;
    while (x <= num) {
        y = 2;
        while (y*y <= x) {
            if (x % y == 0) {
                break;
            }
            if (y + 1 > x / y) {
                count--; 
                break;
            }
            y++;
        }
        x++;
    }

    printf("Number of composite numbers till %d: %d\n", num, count + 1);
    return 0;
}