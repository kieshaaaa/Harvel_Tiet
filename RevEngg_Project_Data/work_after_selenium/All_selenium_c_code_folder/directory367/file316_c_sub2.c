#include<stdio.h>

int main() {
    int words = 0;
    char sentence[30];
    printf("\nEnter a string: ");
    scanf("%[^\n]%*c", sentence);

    for (int pos = 0; sentence[pos] != '\0'; pos++) {
        if (sentence[pos] != ' ' && (sentence[pos+1] == ' ' || sentence[pos+1] == '\0')) {
            words++;
        }
    }

    printf("\nNumber of words in string \"%s\" is: %d\n", sentence, words);
    return 0;
}