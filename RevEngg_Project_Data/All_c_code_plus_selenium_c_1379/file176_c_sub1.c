#include<stdio.h>

int main() {
    char str1[20], str2[20];
    int i = 0, isEqual = 1; // Use isEqual as a flag for equality

    printf("\nEnter first string :: ");
    scanf("%19s", str1); // Use scanf to avoid gets
    printf("\nEnter second string :: ");
    scanf("%19s", str2); // Use scanf to avoid gets

    printf("\nStrings are :: \n\n");
    printf("%s\n", str1);
    printf("%s\n", str2);

    while(str1[i] != '\0' || str2[i] != '\0') {
        if(str1[i] != str2[i]) {
            isEqual = 0; // Set flag to 0 if characters do not match
            break; // Exit loop early if a mismatch is found
        }
        i++;
    }

    if(isEqual)
        printf("\nStrings are equal.\n");
    else
        printf("\nStrings are not equal.\n");

    return 0;
}