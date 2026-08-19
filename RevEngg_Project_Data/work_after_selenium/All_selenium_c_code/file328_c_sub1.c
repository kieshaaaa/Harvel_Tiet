#include <stdio.h>

int main() {
    char letters[] = {'A', '\n', 'B', '\n', 'C', '\n', 'D', '\n', '\0'};
    printf("%s", letters);
    return 0;
}