#include <stdio.h>

int main() {
    int inputSeconds;
    int hours, minutes, seconds;

    printf("Enter the time in seconds: ");
    scanf("%d", &inputSeconds);

    hours = inputSeconds / 3600;
    inputSeconds = inputSeconds % 3600;
    minutes = inputSeconds / 60;
    seconds = inputSeconds % 60;

    printf("%d hours : %d minutes : %d seconds\n", hours, minutes, seconds);
    return 0;
}