#include <stdio.h>
#include <ctype.h> // For tolower function

int main() {
    char ch;
    printf("Enter a character: ");
    scanf("%c", &ch);
    
    ch = tolower(ch); // Convert character to lowercase
    
    char vowels[] = {'a', 'e', 'i', 'o', 'u'};
    int isVowel = 0; // Flag to check if ch is a vowel
    
    if(ch >= 'a' && ch <= 'z') {
        for(int i = 0; i < 5; ++i) {
            if(ch == vowels[i]) {
                isVowel = 1;
                break;
            }
        }
        
        if(isVowel) {
            printf("%c is a VOWEL.\n", ch);
        } else {
            printf("%c is a CONSONANT.\n", ch);
        }
    } else {
        printf("%c is not an alphabet.\n", ch);
    }
    
    return 0;
}