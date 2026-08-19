#include <stdio.h>

int main() {
    char text[100];
    int countU = 0, countL = 0, countS = 0, countD = 0;

    printf("Enter any string: ");
    scanf("%[^\n]s", text);

    for(int i = 0; text[i] != '\0'; i++) {
        if(text[i] >= 'A' && text[i] <= 'Z') countU++;
        else if(text[i] >= 'a' && text[i] <= 'z') countL++;
        else if(text[i] >= '0' && text[i] <= '9') countD++;
        else countS++;
    }

    printf("\nUpper case characters: [ %d ]", countU);
    printf("\nLower case characters: [ %d ]", countL);
    printf("\nDigits: [ %d ]", countD);
    printf("\nSpecial characters: [ %d ]", countS);

    return 0;
}