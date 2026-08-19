#include <stdio.h>

int main() {
    char str1[20], str2[20];
    int i, length1 = 0, length2 = 0;

    printf("\nEnter first string: ");
    scanf("%19s", str1);
    printf("Enter second string: ");
    scanf("%19s", str2);

    for (i = 0; str1[i] != '\0'; i++) length1++;
    for (i = 0; str2[i] != '\0'; i++) length2++;

    if (length1 != length2) {
        printf("\nStrings are not equal\n");
        return 0;
    }

    for (i = 0; i < length1; i++) {
        if (str1[i] != str2[i]) {
            printf("\nStrings are not equal\n");
            return 0;
        }
    }

    printf("\nStrings are equal.\n");
    return 0;
}