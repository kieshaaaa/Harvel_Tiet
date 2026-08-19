#include<stdio.h>

int main() {
    char str1[20], str2[20];
    int i = 0, length1 = 0, length2 = 0;

    printf("\nEnter first string :: ");
    scanf("%19s", str1);
    printf("\nEnter second string :: ");
    scanf("%19s", str2);

    printf("\nStrings are :: \n\n");
    printf("%s\n", str1);
    printf("%s\n", str2);

    // Calculate length of str1
    while(str1[length1] != '\0') {
        length1++;
    }
    // Calculate length of str2
    while(str2[length2] != '\0') {
        length2++;
    }

    if(length1 != length2) {
        printf("\nStrings are not equal.\n");
        return 0; // Exit if lengths are different
    }

    while((str1[i]!='\0') && (str2[i]!='\0')) { // Use && as lengths are now equal
        if(str1[i] != str2[i]) {
            printf("\nStrings are not equal.\n");
            return 0;
        }
        i++;
    }

    printf("\nStrings are equal.\n");
    return 0;
}