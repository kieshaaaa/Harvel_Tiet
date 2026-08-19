/* Source: https://www.includehelp.com/c-programs/read-a-byte-and-print-bits-between-given-positions.aspx */
// C program to read a byte and
// print bits between given positions

#include <stdio.h>
#include <string.h>

int main(int argc, char* argv[])
{
    int p1 = 0;
    int p2 = 0;
    int i = 0;
    char bytes[9];

    printf("Enter the BYTE: ");
    scanf("%[^\n]s", bytes);

    if (strlen(bytes) < 8) {
        printf("please enter 8-bits\n");
        return 0;
    }

    printf("\nEnter the positions p1 and p1: ");
    scanf("%d%d", &p1, &p2);

    printf("\nBits between positions %d and %d are: ", p1, p2);
    for (i = p1; i <= p2; i++)
        printf("%c ", bytes[i]);

    printf("\n");

    return 0;
}
