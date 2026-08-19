#include <stdio.h>

#define MAX_SIZE 100
#define MAX_CHARS 255

int main() {
    char string[MAX_SIZE];
    int frequency[MAX_CHARS];
    int i, min, ascii;

    printf("\nEnter any string: ");
    scanf("%99[^\n]", string); // Safe alternative to gets

    for(i = 0; i < MAX_CHARS; i++) {
        frequency[i] = 0;
    }

    for(i = 0; string[i] != '\0'; i++) {
        ascii = string[i];
        frequency[ascii]++;
    }

    min = 0;
    for(i = 1; i < MAX_CHARS; i++) {
        if(frequency[i] < frequency[min] && frequency[i] != 0 || frequency[min] == 0) {
            min = i;
        }
    }

    printf("\nLowest frequency of ['%c'] is [%d].\n", min, frequency[min]);

    return 0;
}