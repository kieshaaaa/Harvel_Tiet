#include <stdio.h>

int main() {
    char chars[] = {'A', '\n', 'B', '\n', 'C', '\n', 'D', '\n'};
    for(int i = 0; i < sizeof(chars); i++) {
        putchar(chars[i]);
    }

    return 0;
}