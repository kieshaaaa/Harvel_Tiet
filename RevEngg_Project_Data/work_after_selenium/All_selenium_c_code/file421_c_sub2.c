#include <stdio.h>

int main() {
    const int secondsInHour = 3600;
    const int secondsInMinute = 60;
    int totalSeconds, hours, minutes, seconds;

    printf("Enter the time in seconds: ");
    scanf("%d", &totalSeconds);

    hours = totalSeconds / secondsInHour;
    totalSeconds %= secondsInHour;
    minutes = totalSeconds / secondsInMinute;
    seconds = totalSeconds % secondsInMinute;

    printf("%d hours : %d minutes : %d seconds\n", hours, minutes, seconds);
    return 0;
}