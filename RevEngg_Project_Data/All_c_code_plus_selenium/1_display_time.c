/*Write a C program to create a user defined function that accepts seconds as inpur. then convert the given number of seconds to hours, minutes and seconds. Finally display the time in hh:mm:sec format.*/

#include<stdio.h>
#include<math.h>
int main()
{
    int sec;
    int hh , mm , ss;    
    printf("Enter the time in seconds: ");
    scanf("%d", &sec);

    hh = sec / 3600;
    mm = (sec - hh * 3600) / 60;
    ss = sec - hh * 3600 - mm * 60;
    
    printf("%d seconds = %d hours : %d minutes : %d seconds\n", sec, hh, mm, ss);
    printf("Time is: %d : %d : %d\n", hh, mm, ss);

    return 0;
}
