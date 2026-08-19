#include<stdio.h>

int main() {
    char str1[20], str2[20];
    int i = 0, notEqual = 0;

    printf("\nEnter first string :: ");
    scanf("%19s", str1);
    printf("\nEnter second string :: ");
    scanf("%19s", str2);

    printf("\nStrings are :: \n\n");
    printf("%s\n", str1);
    printf("%s\n", str2);

    while(str1[i] != '\0' || str2[i] != '\0') {
        if(str1[i] != str2[i] || (str1[i] == '\0' && str2[i] != '\0') || (str2[i] == '\0' && str1[i] != '\0')) {
            notEqual = 1;
            break;
        }
        i++;
    }

    if(notEqual)
        printf("\nStrings are not equal.\n");
    else
        printf("\nStrings are equal.\n");

    return 0;
}