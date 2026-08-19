/* Source: https://www.codezclub.com/c-compare-contents-two-files/ */
/*  C program to compare data of two files using File Handling  */

/* --------------file4.txt and file5.txt contains text shown below----------

  Perpetual sincerity out suspected necessary
  one but provision satisfied. Respect nothing
  use set waiting pursuit nay you looking.
  If on prevailed concluded ye abilities.
  Address say you new but minuter greater.
  Do denied agreed in innate. Can and
  middletons thoroughly themselves him.
  Tolerably sportsmen belonging in september
  no am immediate newspaper. Theirs expect
  dinner it pretty indeed having no of.
  Principle september she conveying did
  eat may extensive.

*/



#include <stdio.h>
#include <string.h>

int main()
{
    FILE *fp1   ;
    FILE *fp2   ;

    int cnt1 = 0;
    int cnt2 = 0;
    int flg  = 0;


    fp1 = fopen("C:\\Users\\acer\\Documents\\file4.txt","r");
    if( fp1 == NULL )
    {
        printf("\n File can not be opened : \n");
        return -1;
    }

    // move file pointer to end and get total number of bytes
    fseek(fp1,0,SEEK_END);
    cnt1 = ftell(fp1);

    fp2 = fopen("C:\\Users\\acer\\Documents\\file5.txt","r");
    if( fp2 == NULL )
    {
        printf("\n File can not be opened : \n");
        return -1;
    }

    // move file pointer to end and get total number of bytes
    fseek(fp2,0,SEEK_END);
    cnt2 = ftell(fp2);

    fseek(fp1,0,SEEK_SET);
    fseek(fp2,0,SEEK_SET);

    // check for the total number of bytes
    if( cnt1 != cnt2 ){
        printf("\nFile contents are not same\n");
    }
    else
    {
        while( ! feof(fp1) )
        {
                if( fgetc(fp1) != fgetc(fp2) )
                {
                    flg = 1;
                    break;
                }
        }

        if( flg )   printf("\nFile contents are not same.\n");
        else        printf("\nFile contents are same.\n");
    }

    fclose(fp1);
    fclose(fp2);

    return 0;
}