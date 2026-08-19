#include <stdio.h>
#include <string.h>

int main() {
    unsigned char buffer[10] = {0};
    int i;

    // Set buffer with '-'
    memset(buffer, '-', 9);
    printf("buffer (memset with -): ");
    for(i = 0; i < 9; i++) {
        printf("%c", buffer[i]);
    }
    printf(".\n");

    // Set buffer with '1'
    memset(buffer, '1', 9);
    printf("buffer (memset with 1): ");
    for(i = 0; i < 9; i++) {
        printf("%c", buffer[i]);
    }
    printf(".\n");

    // Display as decimal values
    memset(buffer, 0x1F, 9);
    printf("buffer (memset with 0x1F displaying as decimal values):\n");
    for(i = 0; i < 10; i++) {
        printf("%d ", buffer[i]);
    }
    printf(".\n");

    return 0;
}