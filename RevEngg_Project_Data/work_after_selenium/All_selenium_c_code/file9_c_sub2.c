#include <stdio.h>
#include <ctype.h>

int main() {
    char text[100];
    int countU = 0, countL = 0, countS = 0;

    printf("Enter any string: ");
    scanf("%[^\n]s", text);

    for(int i = 0; text[i] != '\0'; i++) {
        if(isupper(text[i])) countU++;
        else if(islower(text[i])) countL++;
        else countS++;
    }

    printf("\nUpper case characters: [ %d ]", countU);
    printf("\nLower case characters: [ %d ]", countL);
    printf("\nSpecial characters: [ %d ]", countS);

    return 0;
}