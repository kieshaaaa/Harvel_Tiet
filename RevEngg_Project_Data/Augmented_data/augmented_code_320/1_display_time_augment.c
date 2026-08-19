/*Write a C program to create a user defined function that accepts seconds as inpur. then convert the given number of seconds to hours, minutes and seconds. Finally display the time in hh:mm:sec format.*/

#include<stdio.h>
#include<math.h>
int main()
{
    int totalSeconds;
    int hours , minutes , seconds;    
    printf("Enter the time in seconds: ");
    scanf("%d", &totalSeconds);

    hours = totalSeconds / 3600;
    minutes = (totalSeconds - hours * 3600) / 60;
    seconds = totalSeconds - hours * 3600 - minutes * 60;
    
    printf("%d seconds = %d hours : %d minutes : %d seconds\n", totalSeconds, hours, minutes, seconds);
    printf("Time is: %d : %d : %d\n", hours, minutes, seconds);

    return 0;
}