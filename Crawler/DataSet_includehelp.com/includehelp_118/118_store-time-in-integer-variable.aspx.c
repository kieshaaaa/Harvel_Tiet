/* Source: https://www.includehelp.com/c-programs/store-time-in-integer-variable.aspx */
/*C program to store time in an integer variable.*/

#include <stdio.h>

int main()
{
    int hh, mm, ss;
    int time;

    printf("Enter date (hh/mm/ss) format: ");
    scanf("%d:%d:%d", &hh, &mm, &ss);

    printf("\nEntered time is: %02d:%02d:%02d\n", hh, mm, ss);

    /*adding hh,mm,ss into time*/
    /*Range of hh,mm,ss are 0 to 59 and it can be stored
     *in 1+1+1 = 3 bytes*/

    time = 0;
    time |= (hh & 0xff); /*hh storing in byte 0*/
    time |= (mm & 0xff) << 8; /*mm storing in byte 1*/
    time |= (ss & 0xff) << 16; /*ss storing in byte 2*/

    printf("Time in single variable: %d [Hex: %08X] \n", time, time);

    /*Extracting hh,mm,ss from time (an integer value)*/

    hh = (time & 0xff); /*hh from byte 0*/
    mm = ((time >> 8) & 0xff); /*mm from byte 1*/
    ss = ((time >> 16) & 0xff); /*ss from byte 2*/

    printf("Time after extracting: %02d:%02d:%02d\n", hh, mm, ss);

    return 0;
}
