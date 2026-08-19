#include <stdio.h>
#define MAX_SIZE 100
#define MAX_CHARS 255

int main() {
    char string[MAX_SIZE];
    int frequency[MAX_CHARS] = {0};
    char c;
    int maxFreq = 0, maxChar = 0, index = 0;

    printf("\nEnter any string: ");
    while ((c = getchar()) != '\n' && c != EOF && index < MAX_SIZE - 1) {
        string[index++] = c;
        frequency[(int)c]++;
    }
    string[index] = '\0'; // Ensure the string is properly terminated

    // No need to iterate through string again, as frequency is already calculated

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