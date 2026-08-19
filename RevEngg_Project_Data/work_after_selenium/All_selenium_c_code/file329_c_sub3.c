#include <stdio.h>
#define MAX_SIZE 100
#define MAX_CHARS 255

int main() {
    char string[MAX_SIZE];
    int frequency[MAX_CHARS] = {0};
    int maxFreq = 0, maxChar = 0;

    printf("\nEnter any string: ");
    scanf("%[^\n]%*c", string);

    int i = 0;
    do {
        frequency[(int)string[i]]++;
    } while (string[i++] != '\0');

    // No need for a second loop through the string
    // Find the character with the maximum frequency
    for (int i = 0; i < MAX_CHARS; i++) {
        if (frequency[i] > maxFreq) {
            maxFreq = frequency[i];
            maxChar = i;
        }
    }

    printf("\nHighest frequency of ['%c'] is [ %d ].\n", maxChar, maxFreq);

    return 0;
}