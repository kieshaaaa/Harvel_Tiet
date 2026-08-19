#include <stdio.h>

#define MAX_SIZE 100
#define MAX_CHARS 255

int main() {
    char string[MAX_SIZE];
    int frequency[MAX_CHARS];
    int i, min, ascii, firstFlag = 1;

    printf("\nEnter any string: ");
    scanf("%99[^\n]", string); 

    for(i = 0; i < MAX_CHARS; i++) {
        frequency[i] = 0;
    }

    for(i = 0; string[i] != '\0'; i++) {
        ascii = string[i];
        frequency[ascii]++;
    }

    for(i = 0; i < MAX_CHARS; i++) {
        if(frequency[i] != 0) {
            if(firstFlag || frequency[i] < frequency[min]) {
                min = i;
                firstFlag = 0;
            }
        }
    }

    printf("\nLowest frequency of ['%c'] is [%d].\n", min, frequency[min]);

    return 0;
}