#include <stdio.h>
#include <string.h>

int main() {
    unsigned char buffer[10] = {0};
    int i;

    // Set buffer with '0'
    memset(buffer, '0', 9);
    printf("buffer (memset with 0): ");
    for(i = 0; i < 9; i++) {
        printf("%c", buffer[i]);
    }
    printf(".\n");

    // Set buffer with '*'
    memset(buffer, '*', 9);
    printf("buffer (memset with *): ");
    for(i = 0; i < 9; i++) {
        printf("%c", buffer[i]);
    }
    printf(".\n");

    // Display as decimal, value 7
    memset(buffer, 7, 9);
    printf("buffer (memset with value 7 displaying as decimal):\n");
    for(i = 0; i < 10; i++) {
        printf("%d ", buffer[i]);
    }
    printf(".\n");

    return 0;
}