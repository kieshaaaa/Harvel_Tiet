#include <stdio.h>

int main() {
    int x = 0, y = 10;
    // Loop uses comma operator in increment section
    for (int i = 0; i < 10; i++, x += 2, y -= 2) {
        printf("x = %d, y = %d\n", x, y);
    }
    return 0;
}