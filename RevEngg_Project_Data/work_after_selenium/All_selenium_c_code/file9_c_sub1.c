#include <stdio.h>

int main() {
    char text[100];
    int countU = 0, countL = 0, countS = 0;

    printf("Enter any string: ");
    scanf("%[^\n]s", text);

    for(int i = 0; text[i] != '\0'; i++) {
        if(text[i] >= 'A' && text[i] <= 'Z') countU++;
        else if(text[i] >= 'a' && text[i] <= 'z') countL++;
        else countS++;
    }

    printf("\nUpper case characters: [ %d ]", countU);
    printf("\nLower case characters: [ %d ]", countL);
    printf("\nSpecial characters: [ %d ]", countS);

    return 0;
}