#include <stdio.h>
#include <string.h>

int main() {
    unsigned char buffer[10] = {0};
    int i;

    // Set buffer with 'A'
    memset(buffer, 'A', 9);
    buffer[9] = '\0';
    printf("buffer (memset with A): ");
    printf("%s", buffer);
    printf(".\n");

    // Set buffer with '#'
    memset(buffer, '#', 9);
    printf("buffer (memset with #): ");
    printf("%s", buffer);
    printf(".\n");

    // Displaying in Hexadecimal
    memset(buffer, 0xAB, 9);
    printf("buffer (memset with 0xAB displaying in hex):\n");
    for(i = 0; i < 10; i++) {
        printf("%02X ", buffer[i]);
    }
    printf(".\n");

    return 0;
}