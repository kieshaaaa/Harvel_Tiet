#include <stdio.h>

int main() {
    int seconds, hours, minutes, remainder;
    printf("Enter the time in seconds: ");
    scanf("%d", &seconds);

    hours = seconds / 3600;
    remainder = seconds % 3600;
    minutes = remainder / 60;
    seconds = remainder % 60;

    printf("%d hours : %d minutes : %d seconds\n", hours, minutes, seconds);
    return 0;
}