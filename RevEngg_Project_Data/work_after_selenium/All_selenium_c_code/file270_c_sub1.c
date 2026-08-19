#include <stdio.h>

int main() {
    char multiple[] = "CodezClub";
    int length = sizeof(multiple) / sizeof(multiple[0]);

    for (int i = 0; i < length; i++) {
        printf("The address of array element %d: %u\n", i, (unsigned)&multiple[i]);
    }

    return 0;
}